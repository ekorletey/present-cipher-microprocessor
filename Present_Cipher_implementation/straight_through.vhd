----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:43 12/07/2022 
-- Design Name: 
-- Module Name:    straight_through - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity straight_through is 

	port(
		input: in std_logic_vector(63 downto 0);
		output: out std_logic_vector(63 downto 0);
		clock: in std_logic
		);
	
end straight_through;

architecture Behavioral of straight_through is

begin
straightProcess: process(clock) is
							begin
							if(RISING_EDGE(clock)) then
							output <= input;
							end if;
							
					  end process;
end Behavioral;

