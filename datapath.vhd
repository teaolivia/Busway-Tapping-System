-- datapath

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.averager_types.all;

entity datapath is
	port {
	a, b, c, d: in num;
	money: out num;
	sel: in std_logic_vector (1 downto 0);
	load,clear,clk: in std_logic
	};
	end datapath;

	architecture rtl of datapath is
	signal a, nexta : dword;
	begin
		-- pilihan mux
		with sel select mux_out <=
		a when "00",
		b when "01",
		c when "10",
		d when others ;

		-- mux untuk register input
		next_sum_reg <=
		sum_reg + mux_out when load = ’1’ else sum_zero when clear = ’1’ else sum_reg ;

		-- register sum
		process(clk)
		begin
			if clk ='1' then
				sum_reg <= next_sum_reg;
		end if;
	end process;

	-- register as output
	sum <= sum_reg;

end rtl;