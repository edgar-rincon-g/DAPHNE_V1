----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Daniel Avila Gomez
-- 
-- Create Date: 10.11.2023 12:06:13
-- Design Name: Low Pass Filter DSP Slice
-- Module Name: lowPass_FirstOrder - lp_firstOrd_arch
-- Project Name: DAPHNE V1 - SELF TRIGGER MODULE
-- Target Devices: XC7A200T-2FBG676C
-- Tool Versions: 2023.1
-- Description: 
-- Instantiates a DSP48EC1 Slice
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Makes an approximation of the output last value by evaluating the output
-- V2.0 Filter features an Enable input to avoid the usage of the filter until 
-- The High Pass Filter has stabilized, this will test the differences in 
-- Performance when the chain is High Pass to Low Pass rather than Low Pass to 
-- High Pass
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity lowPass_FirstOrder is
    Generic (
        Data_Size               : integer   := 14;
        Coefficient_Resolution  : integer   := 17                                   -- One more than decimal desired
    );
    Port (
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        rst                     : in std_logic;                                     -- Reset for the filter
        clk                     : in std_logic;                                     -- Clock for the filter
        x_in                    : in std_logic_vector((Data_Size - 1) downto 0);    -- Input vector from AFEs
        
        -- Module Output
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        y_out                   : out std_logic_vector((Data_Size - 1) downto 0)    -- Output vector from Filter
    );
end lowPass_FirstOrder;

architecture lp_firstOrd_arch of lowPass_FirstOrder is

-- Coefficients used by the filter
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Since the numerator uses the same constant but in a change of signs, we may only use one 
constant num_c1         : signed(17 downto 0) := to_signed(integer(3214), Coefficient_Resolution + 1); -- Original 32743, changed to but this value should be modified according to the real multiplication of the coeff and the number representation
-- The denominator uses only one as the first coefficient 1 is a Bypass of the signal
constant den_c1         : signed(17 downto 0) := to_signed(integer(124644), Coefficient_Resolution + 1); -- Original 32719, changed to but this value should be modified according to the real multiplication of the coeff and the number representation

-- Components used by the filter
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Instantiates the DSP Slice component
component dsp_slice 
    Generic (
        A_Input, B_Input                                            : string        := "DIRECT";
        Use_Dport                                                   : boolean       := FALSE;
        Use_Mult                                                    : string        := "MULTIPLY";
        Use_SIMD                                                    : string        := "ONE48";
        AutoRst_PatDet                                              : string        := "NO_RESET";
        Mask                                                        : bit_vector    := X"3fffffffffff";
        Pattern                                                     : bit_vector    := X"000000000000";
        Sel_Mask                                                    : string        := "MASK";
        Sel_Pattern                                                 : string        := "PATTERN";
        Use_Pattern_Det                                             : string        := "NO_PATDET";
        AReg, BReg, CReg, DReg, ADReg, MReg, PReg                   : integer       := 1;
        ACascReg, BCascReg, ALUModeReg, CarryInReg, CarryInSelReg   : integer       := 1;                                     
        InModeReg, OPModeReg                                        : integer       := 1                     
    );
    Port ( 
        -- Reset for both the input and internal registers
        RstA, RstAllCarryIn, RstALUMode, RstB, RstC                 : in std_logic;
        RstCtrl, RstD, RstInMode, RstM, RstP                        : in std_logic;
        -- Data and Cascade: 30-bit (each) input: Data Ports
        A, ACIn                                                     : in std_logic_vector(29 downto 0); 
        B, BCIn                                                     : in std_logic_vector(17 downto 0); 
        C                                                           : in std_logic_vector(47 downto 0); 
        CarryIn, CarryCascIn                                        : in std_logic;
        D                                                           : in std_logic_vector(24 downto 0); 
        -- Cascade: 30-bit (each) input: Cascade Ports
        MultSignIn                                                  : in std_logic;
        PCIn                                                        : in std_logic_vector(47 downto 0); 
        -- Control: 4-bit (each) input: Control Inputs/Status Bits
        ALUMode                                                     : in std_logic_vector(3 downto 0); 
        CarryInSel                                                  : in std_logic_vector(2 downto 0); 
        Clk                                                         : in std_logic;
        InMode                                                      : in std_logic_vector(4 downto 0); 
        OPMode                                                      : in std_logic_vector(6 downto 0);  
        -- Clock Enables for input registers and internal registers
        CEA1, CEA2, CEAD, CEALUMode, CEB1, CEB2, CEC, CECarryIn     : in std_logic;
        CECtrl, CED, CEInMode, CEM, CEP                             : in std_logic;
        -- Cascade: 30-bit (each) output: Cascade Ports
        ACOut                                                       : out std_logic_vector(29 downto 0);
        BCOut                                                       : out std_logic_vector(17 downto 0);                 
        CarryCascOut, MultSignOut                                   : out std_logic;
        -- Data: 4-bit (each) output: Data Ports
        CarryOut                                                    : out std_logic_vector(3 downto 0);  
        -- Data and Cascade: 48-bit (each) output: Data and Cascade Ports
        P, PCOut                                                    : out std_logic_vector(47 downto 0); 
        -- Control: 1-bit (each) output: Control Inputs/Status Bits
        Overflow, PatternBDetect, PatternDetect, Underflow          : out std_logic   
    );
end component dsp_slice;

-- Auxiliar signals to interconnect the module
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal x_A          : std_logic_vector(29 downto 0) := (others => '0');     -- was signed
signal x_D          : std_logic_vector(24 downto 0) := (others => '0');     -- was signed
signal y_0          : std_logic_vector(47 downto 0) := (others => '0');
signal y_1          : std_logic_vector(47 downto 0) := (others => '0');     -- Past output value multiplied with the coefficient
signal y_0_resized  : std_logic_vector(29 downto 0) := (others => '0');     -- Resized value fo the output, so that it fits the DSP slice multiplication input 
signal y_0_aux      : std_logic_vector(47 downto 0) := (others => '0');     -- Refers to the right shifted, integer value of the filter's output
signal y_1_shifted  : std_logic_vector(47 downto 0) := (others => '0'); 
signal y_0_less_one : std_logic_vector(47 downto 0) := (others => '0');
signal y_0_inverted : std_logic_vector(47 downto 0) := (others => '0');

begin

    -- Seems that changing the resolution of the coefficients did not do anything, must change the strcuture of the feeback filter multiplication!

    -- Transform the input to a signed type value in order to use in the module 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--    x_A                 <= std_logic_vector(resize(signed(x_in),30)) when (filt_en = '1') else "000000000000000000000000000000";
--    x_D                 <= std_logic_vector(resize(signed(x_in),25)) when (filt_en = '1') else "0000000000000000000000000";    
    
    -- Eliminated the enabler for the filter, so it works always
    x_A                 <= std_logic_vector(resize(signed(x_in),30));
    x_D                 <= std_logic_vector(resize(signed(x_in),25));    
    
    -- Forward FIR Filter (Input Signal and Its Registers)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Requires only one DSP Slice 
    fir_forward : dsp_slice
        generic map (
            Use_Dport       => TRUE,
            BReg            => 0,
            DReg            => 0,
            ADReg           => 0,
            MReg            => 0,
            PReg            => 0,
            BCascReg        => 0,
            ALUModeReg      => 0,
            CarryInReg      => 0,
            CarryInSelReg   => 0,                                  
            InModeReg       => 0,
            OPModeReg       => 0
        )
        port map (
            RstA            => rst,
            RstAllCarryIn   => '0',
            RstALUMode      => '0',
            RstB            => '0',
            RstC            => rst,
            RstCtrl         => '0',
            RstD            => '0',
            RstInMode       => '0',
            RstM            => '0',
            RstP            => '0', 
            A               => x_A,
            ACIn            => b"000000000000000000000000000000",
            B               => std_logic_vector(num_c1),
            BCIn            => b"000000000000000000",
            C               => y_1_shifted,                         -- X"ffffffffffff",
            CarryIn         => '0',
            CarryCascIn     => '0',
            D               => x_D,
            MultSignIn      => '0',
            PCIn            => X"000000000000",
            ALUMode         => X"0",
            CarryInSel      => b"000",
            Clk             => clk,
            InMode          => b"00100",
            OPMode          => b"0110101",                          -- Disables the use of the C port b"0000101",  0110101
            CEA1            => '0',
            CEA2            => '1',
            CEAD            => '0',
            CEALUMode       => '0',
            CEB1            => '0',
            CEB2            => '0',
            CEC             => '1',
            CECarryIn       => '0', 
            CECtrl          => '0',
            CED             => '0',
            CEInMode        => '0',
            CEM             => '0',
            CEP             => '0',
            ACOut           => open,
            BCOut           => open,                
            CarryCascOut    => open,
            MultSignOut     => open,
            CarryOut        => open, 
            P               => y_0, 
            PCOut           => open,
            Overflow        => open,
            PatternBDetect  => open,
            PatternDetect   => open,
            Underflow       => open   
        );
        
    -- Transform the output of the first DSP referring to the actual current y[n] value
    -- Right shift it to turn it into a 14 bit integer with 18 bits in the decimal part (Full size of 32 bits embeded in 48 bits) 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    y_0_aux             <= std_logic_vector(shift_right(signed(y_0),6)); -- Was right shifted 15 bits, changed acording to new approximation of the coefficients
    -- Resize the output so that it fits between 30 bits
    y_0_resized         <= std_logic_vector(resize(signed(y_0_aux),30));
    
    -- Feedback FIR Filter (Output Signal)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Requires only one DSP Slice 
    fir_feedback : dsp_slice
        generic map (
            AReg            => 0,
            BReg            => 0,
            MReg            => 0,
            PReg            => 0,
            ACascReg        => 0,
            BCascReg        => 0,
            ALUModeReg      => 0,
            CarryInReg      => 0,
            CarryInSelReg   => 0,                                  
            InModeReg       => 0,
            OPModeReg       => 0
        )
        port map (
            RstA            => '0',
            RstAllCarryIn   => '0',
            RstALUMode      => '0',
            RstB            => '0',
            RstC            => '0',
            RstCtrl         => '0',
            RstD            => '0',
            RstInMode       => '0',
            RstM            => '0',
            RstP            => '0', 
            A               => y_0_resized,
            ACIn            => b"000000000000000000000000000000",
            B               => std_logic_vector(den_c1),
            BCIn            => b"000000000000000000",
            C               => X"ffffffffffff",
            CarryIn         => '0',
            CarryCascIn     => '0',
            D               => b"1111111111111111111111111",
            MultSignIn      => '0',
            PCIn            => X"000000000000",
            ALUMode         => X"0",
            CarryInSel      => b"000",
            Clk             => clk,
            InMode          => b"00000",
            OPMode          => b"0000101",  
            CEA1            => '0',
            CEA2            => '0',
            CEAD            => '0',
            CEALUMode       => '0',
            CEB1            => '0',
            CEB2            => '0',
            CEC             => '0',
            CECarryIn       => '0', 
            CECtrl          => '0',
            CED             => '0',
            CEInMode        => '0',
            CEM             => '0',
            CEP             => '0',
            ACOut           => open,
            BCOut           => open,                
            CarryCascOut    => open,
            MultSignOut     => open,
            CarryOut        => open, 
            P               => y_1, 
            PCOut           => open,
            Overflow        => open,
            PatternBDetect  => open,
            PatternDetect   => open,
            Underflow       => open   
        );
        
    -- Now that y_1 exists, it has a 48 bit representation, but the actual bits that are being used 
    y_1_shifted         <= std_logic_vector(shift_right(signed(y_1),11)); 
    
    -- Finally, let's assign the filter's output 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Output from DSP is 48 bits long, must shift right 15 bits to find the integer part/round (changed to 17 bits later with new coefficient approximation)
--    y_out               <= std_logic_vector(resize(shift_right(signed(y_0),17),Data_Size)) ;
    
    -- The other rounding method should use the condition that the fractional part of the output is having
    -- If the fractional output is greater or equal to 0.5, then we should round up, else round down
    -- This only happens if the input is positive, if it is negative the condition msut still be met but the code is different
    -- That is the reason why there are to conditions to be met 
    -- Remember that shifting right the result only rounds down the value so this filter may always bring a negative average
    ROUND_PROC: process(y_0, y_0_less_one, y_0_inverted)
    begin
        if (y_0(y_0'HIGH) = '1') then
            -- This means that the output of the filter is negative, therefore the comparattion has to be done in a different way
            -- Transform the twos complement representation and find the original number
            y_0_less_one <= std_logic_vector(signed(y_0) - 1);
            y_0_inverted <= NOT(y_0_less_one);
            
            -- Now that the number is inverted, find if the fractional part is bigger or equal to 0.5
            if (y_0_inverted >= X"10000") then
                -- 0000 0000 0000 0000 0000 0000 0000 000.1 0000 0000 0000 0000 bin = 65536 dec = 01.00.00 hex
                -- This means that the first fractional element is 1 therefore the whole sum would be 
                -- 0.5 or above. The rounding still goes for the round down so this negative number only needs to be shifted right
                y_out <= std_logic_vector(resize(shift_right(signed(y_0),17),Data_Size));
            else
                -- Output is below the 0.5 fractional range, therefore the rounding method must be shift right and add one to fit the round up
                y_out <= std_logic_vector(resize(shift_right(signed(y_0),17),Data_Size) + 1);
            end if;
        else
            -- Do not modify the Two's Complement signals
            y_0_less_one <= (others => '0');
            y_0_inverted <= (others => '0');
            
            -- This means that the output of the filter is positive therefore the comparation is straight forward
            if (y_0 >= X"10000") then
                -- 0000 0000 0000 0000 0000 0000 0000 000.1 0000 0000 0000 0000 bin = 65536 dec = 01.00.00 hex
                -- This means that the first fractional element is 1 therefore the whole sum would be 
                -- 0.5 or above, therefore must add one since the shift right rounding method always rounds down
                y_out <= std_logic_vector(resize(shift_right(signed(y_0),17),Data_Size) + 1);
            else
                -- Output is below the 0.5 fractional range, therefore the rounding method by shifting right is kept
                y_out <= std_logic_vector(resize(shift_right(signed(y_0),17),Data_Size));
            end if;
        end if;
    end process ROUND_PROC;  
    
end lp_firstOrd_arch;
