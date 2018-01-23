library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ROMMemory_x16 is
	port(
	address : in  std_logic_vector(7 downto 0);
	data: out std_logic_vector(7 downto 0));
end ROMMemory_x16;

architecture behavior of ROMMemory_x16 is

	type rom_array is array (0 to 255) of std_logic_vector (7 downto 0);
	
	constant rom : rom_array := (
 
  -- Write your algorithm here
  -- :)
	
	"10000000", "11000000", "11100000", "11110000", "11111000", -- 00000 - 00004
	
	"00110011", "11001100", "10101010", "11100011", "11011011", -- 00005 - 00009
 
	"1111010", "10101111", "11001000", "10010000", "00111011", -- 00010 - 00014
	
	);
	
begin
	
	data <= rom(to_integer(unsigned(address)));

end architecture;