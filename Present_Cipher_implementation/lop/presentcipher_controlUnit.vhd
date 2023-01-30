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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cipher_fsm is
	port(
		clock: in std_logic;
		keysel: out std_logic;
		keyload: out std_logic;
		plainsel out std_logic
	);
end cipher_fsm;

architecture Behavioral of cipher_fsm is

	signal count: std_logic(4 downto 0);
	type state_type is (ST0, ST1, ST2, ST3);
	signal PS, NS : state_type;
begin
	sync_proc: process(clock, NS)
	begin
		
	
	
end Behavioral;

