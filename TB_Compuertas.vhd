LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_Compuertas IS
END TB_Compuertas;

ARCHITECTURE behavior OF TB_Compuertas IS
    COMPONENT compuertas
    PORT(
         W : IN  std_logic;
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         S3 : OUT  std_logic;
         S2 : OUT  std_logic;
         S1 : OUT  std_logic;
         S0 : OUT  std_logic
        );
    END COMPONENT;

   signal W : std_logic := '0';
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

   signal S3 : std_logic;
   signal S2 : std_logic;
   signal S1 : std_logic;
   signal S0 : std_logic;

BEGIN
   uut: compuertas PORT MAP (
          W => W,
          X => X,
          Y => Y,
          Z => Z,
          S3 => S3,
          S2 => S2,
          S1 => S1,
          S0 => S0
        );

	W <= '0', '1' after 800ns;
	X <= '0', '1' after 400ns, '0' after 800ns, '1' after 1200ns;
	Y <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns, '0' after 800ns, '1' after 1000ns, '0' after 1200ns, '1'after 1400ns;
	Z <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns, '0' after 600ns, '1' after 700ns, '0' after 800ns, '1' after 900ns, '0' after 1000ns, '1' after 1100ns, '0' after 1200ns, '1' after 1300ns, '0' after 1400ns, '1' after 1500ns;
END;