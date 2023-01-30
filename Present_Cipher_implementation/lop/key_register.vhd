----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:11:13 12/09/2022 
-- Design Name: 
-- Module Name:    key_register - Behavioral 
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

entity key_register is
port(
			D: IN STD_LOGIC_VECTOR(79 downto 0);
			Q: OUT STD_LOGIC_VECTOR(79 downto 0);
			CLK,CLR,LOAD: IN STD_LOGIC
	);
end key_register;

architecture Behavioral of key_register is


	signal temp: STD_LOGIC_VECTOR(79 downto 0);

begin
	reg64 : process(CLK,CLR,LOAD,temp)
	begin 
		if(RISING_EDGE(CLK)) then
			if(CLR = '1') then
				temp <= (others => '0');
				
				elsif(LOAD = '1') then 
					temp <= D;
					end if;
					
				end if;
				Q <= temp;
				end process;


end Behavioral;

