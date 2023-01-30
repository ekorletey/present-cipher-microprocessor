----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:26 12/08/2022 
-- Design Name: 
-- Module Name:    key_scheduler - Behavioral 
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

entity key_scheduler is
	port (
		key: IN STD_LOGIC_VECTOR(79 downto 0);
		keyout: OUT STD_LOGIC_VECTOR(63 downto 0);
		counter: IN STD_LOGIC_VECTOR(4 downto 0);
		sel, clock, clear, load: IN STD_LOGIC
	);
end key_scheduler;

architecture Behavioral of key_scheduler is
	component  MUX_key port(
		input_0, input_1: IN STD_LOGIC_VECTOR(79 downto 0);
		output: OUT STD_LOGIC_VECTOR(79 downto 0);
		sel: IN STD_LOGIC
	);
	end component;
	
	component key_register port(
		D: IN STD_LOGIC_VECTOR(79 downto 0);
			Q: OUT STD_LOGIC_VECTOR(79 downto 0);
			CLK,CLR,LOAD: IN STD_LOGIC
	);
	end component;
	
	component sBox port(
		input: IN STD_LOGIC_VECTOR(3 downto 0);
		output: OUT STD_LOGIC_VECTOR( 3 downto 0)

	);
	end component;
	
	
	signal keytmp, muxout,shift, Qtmp: std_logic_vector(79 downto 0);
	signal temp_one: std_logic_vector(60 downto 0);
	signal temp_two: std_logic_vector(18 downto 0);
	signal s_in, s_out: std_logic_vector(3 downto 0);
	signal xor_in, xor_out: std_logic_vector( 4 downto 0);
	signal through: std_logic_vector( 70 downto 0);
		

begin

	connect_mux: MUX_key port map(
		input_0 => keytmp,
		input_1 => key,
		output => muxout,
		sel => sel
	);
	
	connect_reg: key_register port map(
		D =>muxout,
		Q => Qtmp,
		CLK => clock,
		CLR => clear,
		LOAD => load
	);

----------------circular left shift 61-------------------
temp_one <= Qtmp(79 downto 19);
temp_two <= Qtmp(18 downto 0);
shift <= temp_two & temp_one;


----------------------operation area--------------------
s_in <= shift(79 downto 76);
through <= shift(75 downto 5);
xor_in <= shift(4 downto 0);



--------------------connect_sbox--------------------------
connectSbox: sBox port map(
		input => s_in,
		output => s_out
);


----------------------------Xor portion--------------
xor_out <= xor_in xor counter;

----------------------------joining------------------
keytmp <= s_out & through & xor_out;
------------output-------------------
keyout <= Qtmp(79 downto 16);


end Behavioral;

