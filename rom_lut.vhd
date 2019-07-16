library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_lut is 
	port(
		key   	 : in std_logic_vector(7 downto 0);
		freq_out : out integer
		);
end rom_lut;

architecture synth of rom_lut is 

begin 
	process (key) begin
		case key is
			when  "00110000" => freq_out <= 183472; --x30
			when  "00110001" => freq_out <= 173173; --x31
			when  "00110010" => freq_out <= 163454; --x32
			when  "00110011" => freq_out <= 154281;	--x33		
			when  "00110100" => freq_out <= 145622; --x34
			when  "00110101" => freq_out <= 137449; --x35
			when  "00110110" => freq_out <= 129730; --x36
			when  "00110111" => freq_out <= 122449; --x37
			when  "00111000" => freq_out <= 115579; --x38
			when  "00111001" => freq_out <= 109091; --x39
			when  "00111010" => freq_out <= 102969; --x3a
			when  "00111011" => freq_out <= 97190; --x3b
			when  "00111100" => freq_out <= 91733; --x3c
			when  "00111101" => freq_out <= 86586; --x3d
			when  "00111110" => freq_out <= 81727; --x3e
			when  "00111111" => freq_out <= 77138; --x3f
			when  "01000000" => freq_out <= 72809; --x40
			when  "01000001" => freq_out <= 68723; --x41
			when  "01000010" => freq_out <= 64867; --x42
			when  "01000011" => freq_out <= 61224; --x43
			when  "01000100" => freq_out <= 57790; --x44
			when  "01000101" => freq_out <= 54545; --x45
			when  "01000110" => freq_out <= 51484; --x46
			when  "01000111" => freq_out <= 48595; --x47
			when  "01001000" => freq_out <= 45867; --x48
			when  others 	 => freq_out <= 0; 
		end case;
	end process;

end;