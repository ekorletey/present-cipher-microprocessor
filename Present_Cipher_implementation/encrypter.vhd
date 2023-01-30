----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:11:01 12/10/2022 
-- Design Name: 
-- Module Name:    encrypter - Behavioral 
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

entity encrypter is
	port(
		Ptext: in std_logic_vector(63 downto 0);
		key: in std_logic_vector(79 downto 0);
		CipherText: out std_logic_vector(63 downto 0);
		clear: in std_logic;
		clock: in std_logic
	);
end encrypter;

architecture Behavioral of encrypter is
	component TopLevel port(
	keyorigin: in std_logic_vector(79 downto 0);
	plaintextM: in std_logic_vector(63 downto 0);
	loadkey, loadplain: in std_logic;
	done_sig: in std_logic;
	selM, clock, reset: in std_logic;
	counter_in: in std_logic_vector(4 downto 0);
	final: out std_logic_vector(63 downto 0)
	);
	end component;
	
	component cipher_fsm port(
		clock, reset: in std_logic;
		count: in std_logic_vector(4 downto 0);
		loadkey, loadplain, sel,outdone,up : out std_logic
	);
	end component;
	
	component COUNT PORT(
		UP, CLK, CLR: IN STD_LOGIC;
       -- DONE: OUT STD_LOGIC;    --outputs 1 if count is 1111
        OUTPUT: OUT STD_LOGIC_VECTOR(4 downto 0)
	);
	end component;
	signal loadkeytmp, outdonetmp, seltmp, loadplaintmp, uptmp : std_logic;
	signal  outtmp : std_logic_vector(4 downto 0);
	
begin

fsm_connect: TopLevel port map(
	keyorigin => key, --from top
	plaintextM => Ptext, --from top
	loadkey => loadkeytmp,
	loadplain => loadplaintmp,
	selM => seltmp,
	done_sig => outdonetmp,
	clock => clock,
	reset => clear,
	counter_in => outtmp,
	final => CipherText
	);
	
cipher_connect: cipher_fsm port map(
	clock => clock,
	reset => clear,
	loadkey => loadkeytmp,
	loadplain => loadplaintmp,
	sel => seltmp,
	count => outtmp,
	outdone => outdonetmp,
	up => uptmp
);

counter_connect: count port map(
	UP => uptmp,
	CLK => clock,
	CLR => clear,
   OUTPUT => outtmp
);



end Behavioral;

