-- datapath

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.averager_types.all;

entity datapath is
	port {
	a, b, c, d
	};
	end datapath;

	architecture rtl of datapath is
	signal a, nexta : dword;