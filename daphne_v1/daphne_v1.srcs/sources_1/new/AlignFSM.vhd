----------------------------------------------------------------------------------
-- Company: Unviersidad EIA

-- Engineer: Edgar Rincón Gil <edgar.rincon.g@gmail.com>
-- Create Date: 05.12.2023 
-- Design Name: Data Alignment FSM Full Build
-- Module Name: AlignFSM - alFsm_arch
-- Project Name: DAPHNE V1 - DATA ALIGNMENT MODULE
-- Target Devices: XC7A200T-1SBG484C
-- Tool Versions: 2023.1
-- Description: 
-- Creates a big Module containing all the training FSM to align the Digital and Frame Clocks with the Data
-- Dependencies: 
-- Relies on 'bitFSM_Module.vhd', 'frameFSM_Module.vhd' files
-- Revision:
-- Revision 0.02 - File Updated
-- Additional Comments:
-- The Alignment Module has succesfully included both FSM to completely align the data
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AlignFSM is
    Port ( 
        -- Module Inputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        clk_div             : in std_logic;                         -- Divided Version of the Digital Clock
        rst                 : in std_logic;                         -- Async Reset
        iser_data           : in std_logic_vector(13 downto 0);     -- Channel Data (use Channel 0 to Align all 8 Channels)
        --frame_data          : in std_logic_vector(13 downto 0);     -- Frame Clock Turned To Data
        --al_frame            : in std_logic;                         -- '0' Automatic Alignment, '1' Manual Alignment
        pll_locked          : in std_logic;                         -- PLL Locked
        --train_pat_active    : in std_logic;                         -- Specific Training Pattern Active in the AFE Outputs
        --custom_pat_active   : in std_logic;                         -- Custom Training Pattern Active in the AFE Outputs
        
        -- Module Outputs
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        --phase_overflow      : out std_logic;                        -- Phase Overflowed (Digital Bit Clock Alignment)
        --bitslip_on_flag     : out std_logic;                        -- Bitslip Operation being Executed
        bitslip             : out std_logic;                        -- Bitslipt Control Output for the Iserdese
        phase_out           : out std_logic_vector(1 downto 0);     -- Selected Phase to Align the Data ("11" Reserved for Future Use)
        done_bit_fsm        : out std_logic;                        -- Data Aligned With the Digital Clock
        done_frame_fsm      : out std_logic                         -- Data Aligned With Frame Clock (Final Alignment)
    );
end AlignFSM;

architecture Behavior of AlignFSM is

-- Aux signals to interconnect the FSMs
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
signal done_bit             : std_logic := '0';
signal done_frame           : std_logic := '0';
signal phase                : std_logic_vector(1 downto 0);
signal start_process        : std_logic;
TYPE Tstate IS (not_aligned, bit_align0, bit_align1, bit_align2, bit_align3, 
                frame_align, align_done, reset_align);
signal state: Tstate := not_aligned;
signal next_state: Tstate;
signal bitslip_signal       : std_logic := '0';
TYPE Tstate_bitslip IS (idle, do_bitslip, wait_4_cycles );
signal state_bitslip: Tstate_bitslip := idle;
signal next_state_bitslip: Tstate_bitslip;
signal contador_bitslip     : std_logic_vector(1 downto 0);

begin 
    process(clk_div, rst)
    begin
        if (rst = '1') then
            done_bit <= '0';
            done_frame <= '0';
            phase <= b"00";
            state <= not_aligned;
            state_bitslip <= idle;
            contador_bitslip <= b"00";
        elsif rising_edge(clk_div) then
            state <= next_state;
            state_bitslip <= next_state_bitslip;
            
--            --Next if statement allows the state bit align to increment by 1 the phase selection lines
            if(state = bit_align0) then
                phase <= b"00";
            elsif(state = bit_align1) then
                phase <= b"01";
            elsif(state = bit_align2) then
                phase <= b"10";
--            elsif(state = bit_align3) then
--                phase <= b"011";
            else
                phase <= phase;
            end if;            
            
            --Next if statement allows to increment the counter to wait 4 cycles before checking the frame again
            if(state_bitslip = wait_4_cycles) then
                contador_bitslip <= contador_bitslip + 1;
            else                
                contador_bitslip <= b"00";
            end if; 
        
        end if;
    end process;
    
    process(state, pll_locked, iser_data, done_bit, done_frame )
    begin
        case state is 
            when not_aligned =>
                if(pll_locked = '1') then
                    next_state <= bit_align0;
                else 
                    next_state <= not_aligned;
                end if;
                
            when bit_align0 =>
                if( (iser_data = b"10101010101010") or (iser_data = b"01010101010101")) then
                    next_state <= frame_align;
                else                    
                    next_state <= bit_align1;
                end if;
            
            when bit_align1 =>
                if( (iser_data = b"10101010101010") or (iser_data = b"01010101010101")) then
                    next_state <= frame_align;
                else                    
                    next_state <= bit_align2;
                end if;
                
            when bit_align2 =>
                if( (iser_data = b"10101010101010") or (iser_data = b"01010101010101")) then
                    next_state <= frame_align;
                else                    
                    next_state <= bit_align0;
                end if;
            
--            when bit_align3 =>
--                if( (iser_data = b"10101010101010") or (iser_data = b"01010101010101")) then
--                    next_state <= frame_align;
--                else                    
--                    next_state <= bit_align0;
--                end if;    
                
            when frame_align => -- CUSTOM OUTPUT 0X2D29
                if(iser_data = b"10110100101001") then             
                    next_state <= align_done;
                else 
                    next_state <= frame_align;                                       
                end if;       
                
            when align_done =>
                next_state <= align_done;
                                             
            when OTHERS =>
                next_state <= not_aligned;
                                          
        end case;              
    end process;
    
    process(state)
    begin
        case state is 
            when not_aligned =>
                --phase <= b"000";                                
                done_bit_fsm <= '0';
                done_frame_fsm <= '0'; 
                                         
            when bit_align0 =>
                --phase <= b"000";                                 
                done_bit_fsm <= '0';
                done_frame_fsm <= '0';
                
            when bit_align1 =>
                --phase <= b"001";                                 
                done_bit_fsm <= '0';
                done_frame_fsm <= '0';
                
            when bit_align2 =>
                --phase <= b"010";                                 
                done_bit_fsm <= '0';
                done_frame_fsm <= '0';
                
            when bit_align3 =>
                --phase <= b"011";                                 
                done_bit_fsm <= '0';
                done_frame_fsm <= '0';
                
            when frame_align =>
                --phase <= phase;                                
                done_bit_fsm <= '1';
                done_frame_fsm <= '0';                                             
                
            when align_done =>
                --phase <= phase;                          
                done_bit_fsm <= '1';
                done_frame_fsm <= '1';
                
            when OTHERS =>
                --phase <= b"000";
                done_bit_fsm <= '0';
                done_frame_fsm <= '0';
                
        end case;              
    end process;
    
    process(state, next_state, state_bitslip, iser_data, contador_bitslip)
    begin
        case state_bitslip is
            when idle =>
                if((state = frame_align) and (next_state = frame_align)) then
                    next_state_bitslip <= do_bitslip;
                else
                    next_state_bitslip <= idle;
                end if;
                
            when do_bitslip =>            
                next_state_bitslip <= wait_4_cycles;
                
            when wait_4_cycles =>    
                if(contador_bitslip = 3) then
                    next_state_bitslip <= idle;
                else    
                    next_state_bitslip <= wait_4_cycles;
                end if;
                
            when others =>
                next_state_bitslip <= idle;
                
        end case;
    end process;
    
    process( state_bitslip)
    begin
        case state_bitslip is
            when idle =>
                bitslip <= '0';
                
            when do_bitslip =>            
                bitslip <= '1';
                
            when wait_4_cycles =>    
                bitslip <= '0';
                
            when others =>
                bitslip <= '0';
                
        end case;
    end process;
    
    -- bitslip <= bitslip_signal;
    phase_out <= phase;
    --phase_overflow <= phase(2);
    -- done_bit_fsm <= done_bit;
    -- done_frame_fsm <= done_frame;
       
end Behavior;   