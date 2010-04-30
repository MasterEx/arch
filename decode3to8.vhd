-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY decode3to8 IS
GENERIC (
n : INTEGER := 8
);
PORT (
SEL : IN  STD_LOGIC_VECTOR(2 downto 0);
Y 	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END decode3to8;


ARCHITECTURE behavior OF decode3to8 IS
BEGIN
	WITH SEL SELECT Y <=
	"00000001" WHEN "000",
	"00000010" WHEN "001",
	"00000100" WHEN "010",
	"00001000" WHEN "011",
	"00010000" WHEN "100",
	"00100000" WHEN "101",
	"01000000" WHEN "110",
	"10000000" WHEN OTHERS ;
END behavior;
