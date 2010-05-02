-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg IS
GENERIC (
n : INTEGER := 16
);
PORT (
D 		: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
Resetn 	: IN STD_LOGIC;
E, Clock: IN STD_LOGIC;
Q		: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END reg;


ARCHITECTURE behavior OF reg IS
BEGIN
	PROCESS (Resetn,Clock)
	BEGIN
		IF Resetn = '0' THEN
			Q <= (OTHERS => '0');
		ELSIF Clock'EVENT AND Clock='1' THEN
			IF E = '1' THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
END behavior;
