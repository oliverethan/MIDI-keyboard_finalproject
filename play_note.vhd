library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity play_note is 
	port(
		clk    : in  std_logic;
		note   : in std_logic_vector(7 downto 0);
		--valid  : in std_logic;
		on_off : in std_logic;
		sample : out std_logic
		);
end play_note;


architecture synth of play_note is

signal counter    : integer := 0;
signal frequency  : integer;
signal sample_sig : std_logic := '0';

component rom_lut is 
	port(
		key   : in std_logic_vector(7 downto 0);
		freq_out : out integer
		);
end component;

begin

get_frequency : rom_lut 
	port map ( 
		key => note, 
		freq_out => frequency
	);

	process (clk) begin
	if rising_edge(clk) then
		if (on_off = '1') then
			if (counter >= frequency) then
				sample_sig <= not sample_sig;
				counter   <= 0;
			else 
				counter <= counter + 1;
			end if;	
		end if;
		end if;
	end process;

sample <= sample_sig;

end synth;