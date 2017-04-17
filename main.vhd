-- main

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.averager_types.all;

package busway_tapping_system is

entity BuswayTappingSystem is
end BuswayTappingSysteml

architecture behavior of BuswayTappingSystem is
	component controller
	port (
		money: in std_logic_vector(3 downto 0);
		in1, in2: in std_logic;
		out: out std_logic;
	);
	end component;
	signal  in1, in2, out: std logic;
begin
	btsController: controller port map (in1, in2, out);

	process
	begin
	end process;
	end behavior;