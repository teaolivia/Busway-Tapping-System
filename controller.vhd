-- controller

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.averager_types.all;

entity controller is
	port (

	);
	end controller;

architecture behavior of controller is
	type statetype is
		();
	signal currentstate, nextstate:
		statetype;
begin
	statereg: process(clk, rst)
	begin
		if (rat = '1') then --initial state
			currentstate <= S_Off;
		elsif (clk = '1' and clk'event) then
			currentstate <= nextstate;
		end if;
	end process;

	-- mux 2x1
	comblogic: process (currentstate, b)
	begin
		case currentstate is
			when S_Off =>
				x <= '0', --off