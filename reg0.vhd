-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg0 IS
GENERIC (
n : INTEGER := 8
);
PORT (
D 		: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
Resetn 	: IN STD_LOGIC;
E, Clock: IN STD_LOGIC;
Q		: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END reg0;


ARCHITECTURE behavior OF reg0 IS

SIGNAL Output :	STD_LOGIC_VECTOR(n-1 DOWNTO 0);

BEGIN
	PROCESS (Resetn,Clock)
	BEGIN
		FOR I IN 0 TO (n-1) LOOP
			Output(I) <= '0';
		END LOOP;
		IF Resetn = '0' THEN
			Q <= (OTHERS => '0');
		ELSIF Clock'EVENT AND Clock='1' THEN
			IF E = '1' THEN
				Q <= Output;
			END IF;
		END IF;
	END PROCESS;
END behavior;
