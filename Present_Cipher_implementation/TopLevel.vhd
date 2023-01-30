----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:35 12/09/2022 
-- Design Name: 
-- Module Name:    TopLevel - Behavioral 
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

entity TopLevel is
 port(
  keyorigin: in std_logic_vector(79 downto 0);
  plaintextM: in std_logic_vector(63 downto 0);
  loadkey, loadplain: in std_logic;
  selM, clock, reset: in std_logic;
  counter_in:  in std_logic_vector(4 downto 0);
  done_sig: in std_logic;
  final: out std_logic_vector(63 downto 0)
 );

end TopLevel;

architecture Behavioral of TopLevel is
	signal prefinal: std_logic_vector(63 downto 0);

 component Datapath port(
  plaintext, key: IN STD_LOGIC_VECTOR(63 downto 0);
  sel, CLK, clearplain, loadplain: IN STD_LOGIC;
  cipher : OUT STD_LOGIC_VECTOR(63 downto 0)
 );
 end component;
 
 component key_scheduler port(
  key: IN STD_LOGIC_VECTOR(79 downto 0);
  keyout: OUT STD_LOGIC_VECTOR(63 downto 0);
  counter: IN STD_LOGIC_VECTOR(4 downto 0);
  sel, clock, clear, load: IN STD_LOGIC
 );
 end component;
 
 signal interM_key: std_logic_vector(63 downto 0);
 
begin
 datapath_connect: Datapath port map(
  plaintext => plaintextM,
  key => interM_key,
  loadplain => loadplain,
  clearplain => reset,
  sel => selM,
  cipher => prefinal,
  CLK => clock
 );
 
 with done_sig select final <= prefinal when '1',
										(others => 'Z') when others;
 
 key_schedulerConnect: key_scheduler port map(
  key => keyorigin,
  keyout => interM_key,
  counter => counter_in,
  sel => selM,
  clock => clock,
  clear => reset,
  load => loadkey
  );


end Behavioral;
