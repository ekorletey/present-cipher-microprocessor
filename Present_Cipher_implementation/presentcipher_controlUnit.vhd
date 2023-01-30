----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:22:17 12/09/2022 
-- Design Name: 
-- Module Name:    presentcipher_controlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cipher_fsm is
	port(
		clock, reset: in std_logic;
		count: in std_logic_vector(4 downto 0);
		loadkey, loadplain, sel,outdone,up : out std_logic
		--countout: out std_logic_vector(4 downto 0)
	);
end cipher_fsm;

architecture Behavioral of cipher_fsm is

	type state_type is (ST0, ST1, ST2, ST3, ST4);
	signal PS, NS : state_type;
begin
	init_proc: process(clock, reset) is
	begin

          if(reset = '1') then 
            PS <= ST0;
          elsif(rising_Edge(clock)) then
            PS <= NS;
          end if;
        end process;
	
	compute_proc : process(PS, count) is
						begin
							case (PS) is
								when ST0 =>
									NS <= ST1;
									
							   when ST1 =>
									NS <= ST2;
									
								when ST2 =>
									NS <= ST3;
								
								when ST3 =>
								
									if (count = "11110") then
										NS <= ST4;
								   else
										NS <= ST2;
									end if;
									
									
								when ST4 =>
									NS <= ST4;
						end case;
					end process;
					
					
					
	outputProc : process(PS) is 
						begin
							case (PS) is
								when ST0 =>
									sel <= '1';
									--reset <= '0';
									loadkey <= '0';
									loadplain <= '0';	
									outdone <='0';
									up <= '0';
									
								when ST1 =>
									sel <= '1';
--									reset <= '0';
									loadkey <= '1';
									loadplain <= '1';	
									outdone <='0';
									up <= '0';
								
								when ST2 =>
									sel <= '0';
--									reset <= '0';
									loadkey <= '0';
									loadplain <= '1';
									outdone <='0';
									up <= '0';

								when ST3 =>
									sel <= '0';
--									reset <= '0';
									loadkey <= '1';
									loadplain <= '1';
									outdone <='0';
									up <= '1';
									
								when ST4 =>
									sel <= '-';
---									reset <= '0';
									loadkey <= '0';
									loadplain <= '0';
									outdone <='1';
									up <= '0';
									
							end case;

					end process;		
	
end Behavioral;

