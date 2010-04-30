-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
library ieee;
use ieee.std_logic_1164.all;

entity mux8to1 is
	generic (
		n : integer := 16
	);
	port ( 	
		W1, W2, W3, W4	: IN STD_LOGIC_VECTOR(n-1 downto 0);
		W5, W6, W7, W8	: IN STD_LOGIC_VECTOR(n-1 downto 0);
		SEL		: IN STD_LOGIC_VECTOR(2 downto 0);
		F		: OUT STD_LOGIC_VECTOR(n-1 downto 0)
	);
end mux8to1;


architecture behavior of mux8to1 is
begin
	with SEL select
		F <=	W1 when "000",
				W2 when "001",
				W3 when "010",
				W4 when "011",
				W5 when "100",
				W6 when "101",
				W7 when "110",
				W8 when OTHERS;
end behavior;
