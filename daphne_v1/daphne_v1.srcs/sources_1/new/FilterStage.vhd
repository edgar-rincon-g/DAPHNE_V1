----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2024 15:35:32
-- Design Name: 
-- Module Name: FilterStage - filtStage_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FilterStage is
    Generic (
        DATA_SIZE               : integer   := 14;
        HP_COEFF_RESOLUTION     : integer   := 17;
        LP_COEFF_RESOLUTION     : integer   := 17
    );
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------  
        rst                     : in std_logic;
        clk                     : in std_logic;
        x_in_hp                 : in std_logic_vector((DATA_SIZE - 1) downto 0);
        x_in_lp                 : in std_logic_vector((DATA_SIZE - 1) downto 0);    
        neuNet_used             : in std_logic;                                         -- Defines if a Neural Network Self Trigger is Used ('1' Yes, '0' No)                                                                                          
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
        y_out_hp                : out std_logic_vector((DATA_SIZE - 1) downto 0);
        y_out_lp                : out std_logic_vector((DATA_SIZE - 1) downto 0)
    );
end FilterStage;

architecture filtStage_arch of FilterStage is

-- Internal Connections and Auxiliary Signals
--------------------------------------------------------------------------------------------------------------------------------------------------
signal hp_filt_data             : std_logic_vector((DATA_SIZE - 1) downto 0);
signal hp_filt_data_reg         : std_logic_vector((DATA_SIZE - 1) downto 0);
signal lp_filt_data             : std_logic_vector((DATA_SIZE - 1) downto 0);
signal lp_filt_data_reg         : std_logic_vector((DATA_SIZE - 1) downto 0);
signal hp_x_in_data             : std_logic_vector((DATA_SIZE - 1) downto 0);
signal lp_x_in_data             : std_logic_vector((DATA_SIZE - 1) downto 0);

-- High Pass Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component highPass_FirstOrder 
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
end component highPass_FirstOrder;

-- Low Pass Module Declaration
--------------------------------------------------------------------------------------------------------------------------------------------------
component lowPass_FirstOrder 
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
end component;

begin

    -- Module Inputs Assignation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- High Pass Filter Input
    hp_x_in_data                <= x_in_hp;
    -- Low Pass Filter Input
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    lp_x_in_data                <= hp_filt_data_reg when (neuNet_used = '1') else x_in_lp;

    -- High Pass First Order Filter Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    HP_FILTER_COM : highPass_FirstOrder     
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
            rst                 => rst,
            clk                 => clk,
            x_in                => hp_x_in_data,                                    -- Use lp_filt_data if low pass is implemented but has no enable controlled. Use afe_data if no low pass is used or low pass has enable input
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
            y_out               => hp_filt_data 
        );
        
    -- Low Pass First Order Filter Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    LP_FILTER_COM : lowPass_FirstOrder     
        port map (
            -- Module Inputs
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
            rst                 => rst,
            clk                 => clk,
            x_in                => lp_x_in_data,                                    -- Use afe_data if low pass enabler is not implemented/used, use hp_filt_data with low pass enable controlled or if no low pass filter is implemented at all 
            
            -- Module Outputs
        --------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
            y_out               => lp_filt_data 
        );

    -- Filters Outputs Pipelining Instantiation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    REG_FILT_IN : process(clk, rst)
        begin
            if rising_edge(clk) then
                if (rst = '1') then
                    hp_filt_data_reg <= (others => '0');
                    lp_filt_data_reg <= (others => '0');
                else
                    hp_filt_data_reg <= hp_filt_data;
                    lp_filt_data_reg <= lp_filt_data;
                end if;
            end if;
    end process REG_FILT_IN;
    
    -- Module Outputs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    y_out_hp                    <= hp_filt_data_reg;
    y_out_lp                    <= lp_filt_data_reg;
    
end filtStage_arch;
