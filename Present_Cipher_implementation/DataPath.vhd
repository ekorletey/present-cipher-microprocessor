----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:13:50 11/28/2022 
-- Design Name: 
-- Module Name:    DataPath - Behavioral 
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

entity DataPath is
	port(
	plaintext, key: IN STD_LOGIC_VECTOR(63 downto 0);
	sel, CLK, clearplain, loadplain, loadkey, clearkey: IN STD_LOGIC;
	cipher : OUT STD_LOGIC_VECTOR(63 downto 0)
	
	);

end DataPath;

architecture Behavioral of DataPath is
	component MUX port(
		input_0, input_1: IN STD_LOGIC_VECTOR(63 downto 0);
		output: OUT STD_LOGIC_VECTOR(63 downto 0);
		sel: IN STD_LOGIC
	);
	end component;
	
	component reg64 port(
		D: IN STD_LOGIC_VECTOR(63 downto 0);
		CLK, LOAD, CLR: IN STD_LOGIC;
	 Q: OUT STD_LOGIC_VECTOR(63 downto 0)
	);
	end component;
	

	
	-----------P_layer-------------
	
	component P_layer port(
		input: IN STD_LOGIC_VECTOR(63 downto 0);
	 output: OUT STD_LOGIC_VECTOR(63 downto 0)
	);
	end component;
	
	---------------S_box 0----------
	component S_box port(
		input: IN STD_LOGIC_VECTOR(3 downto 0);
		output: OUT STD_LOGIC_VECTOR( 3 downto 0)
	);
	end component;
	
	component straight_through port (
		input: in std_logic_vector(63 downto 0);
		output: out std_logic_vector(63 downto 0);
		clock: in std_logic
	
	);
	
	end component;

	
	
	---------------------siganl cables--------------
	signal ciphertmp, datatmp, D_out, keytmp, xor_tmp, xor_out, s_boxout, Pout: STD_LOGIC_VECTOR(63 downto 0);
	signal S_boxtmp15, S_boxtmp14, S_boxtmp13, S_boxtmp12, S_boxtmp11, S_boxtmp10, S_boxtmp9, S_boxtmp8, S_boxtmp7, S_boxtmp6, S_boxtmp5, S_boxtmp4, S_boxtmp3, S_boxtmp2, S_boxtmp1, S_boxtmp0: STD_LOGIC_VECTOR( 3 downto 0);
	signal sub_out15, sub_out14, sub_out13, sub_out12, sub_out11, sub_out10, sub_out9, sub_out8, sub_out7, sub_out6, sub_out5, sub_out4, sub_out3, sub_out2, sub_out1, sub_out0: STD_LOGIC_VECTOR(3 downto 0);
	signal s_box64: STD_LOGIC_VECTOR(63 downto 0);
	
begin

			---------mux-------------
	muxconnect : MUX port map(
		input_0 => ciphertmp,
		input_1 => plaintext,
		output => datatmp,
		sel => sel
	);
	
	--------input register----------
	datainput : reg64 port map(
		D => datatmp,
		Q => D_out,
		CLK => CLK,
		LOAD => loadplain,
		CLR => clearplain
	);
	
	------------------key input---------
	keyinput : reg64 port map(
		D => key,
		Q => keytmp,
		CLK => CLK,
		LOAD => loadkey,
		CLR => clearkey
	);
	
	--------------XOR-------------
	 xor_tmp <=(D_out xor keytmp);
	
	--------------------straight through---------
	passer_by : straight_through port map(
		input => xor_tmp,
		clock => CLK,
		output(63 downto 60) => S_boxtmp15,
		output(59 downto 56) => S_boxtmp14,
		output(55 downto 52) => S_boxtmp13,
		output(51 downto 48) => S_boxtmp12,
		output(47 downto 44) => S_boxtmp11,
		output(43 downto 40) => S_boxtmp10,
		output(39 downto 36) => S_boxtmp9,
		output(35 downto 32) => S_boxtmp8,
		output(31 downto 28) => S_boxtmp7,
		output(27 downto 24) => S_boxtmp6,
		output(23 downto 20) => S_boxtmp5,
		output(19 downto 16) => S_boxtmp4,
		output(15 downto 12) => S_boxtmp3,
		output(11 downto 8) => S_boxtmp2,
		output(7 downto 4) => S_boxtmp1,
		output(3 downto 0) => S_boxtmp0
		
		);
		
		
	
	
	
	 
	 ----------------substitution-------------------
	 substitution0 : S_box port map(
		input => S_boxtmp15,
		output => sub_out15
	 );
	 
	  substitution1 : S_box port map(
		input => S_boxtmp14,
		output => sub_out14
	 );
	 
	  substitution2 : S_box port map(
		input => S_boxtmp13,
		output => sub_out13
	 );
	 
	  substitution3 : S_box port map(
		input => S_boxtmp12,
		output => sub_out12
	 );
	 
	  substitution4 : S_box port map(
		input => S_boxtmp11,
		output => sub_out11
	 );
	 
	  substitution5 : S_box port map(
		input => S_boxtmp10,
		output => sub_out10
	 );
	 
	  substitution6 : S_box port map(
		input => S_boxtmp9,
		output => sub_out9
	 );
	 
	  substitution7 : S_box port map(
		input => S_boxtmp8,
		output => sub_out8
	 );
	 
	  substitution8 : S_box port map(
		input => S_boxtmp7,
		output => sub_out7
	 );
	 
	  substitution9 : S_box port map(
		input => S_boxtmp6,
		output => sub_out6
	 );
	 
	  substitution10 : S_box port map(
		input => S_boxtmp5,
		output => sub_out5
	 );
	 
	  substitution11 : S_box port map(
		input => S_boxtmp4,
		output => sub_out4
	 );
	 
	  substitution12 : S_box port map(
		input => S_boxtmp3,
		output => sub_out3
	 );
	 
	  substitution13 : S_box port map(
		input => S_boxtmp2,
		output => sub_out2
	 );
	 
	  substitution14 : S_box port map(
		input => S_boxtmp1,
		output => sub_out1
	 );
	 
	  substitution15 : S_box port map(
		input => S_boxtmp0,
		output => sub_out0
	 );


	s_box64 <= (sub_out15 & sub_out14 & sub_out13 & sub_out12 & sub_out11 & sub_out10 & sub_out9 &  sub_out8 & sub_out7 & sub_out6 & sub_out5 & sub_out4 & sub_out3 & sub_out2 & sub_out1 & sub_out0);
	
	------------------key input---------
	
		--s_box64 <= s_boxout;
	



	P_layer_connection : P_layer port map(
		input => s_box64,
		output => Pout
	);
	
	cipher <= Pout;
end Behavioral;

