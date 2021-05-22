library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compuertas is
    Port(
        W, X, Y, Z: in std_logic;
        S3, S2, S1, S0: out std_logic
    );
end compuertas;

architecture behaviour of compuertas is
    begin
        S3 <= W or X;
        S2 <= (W and X) or ((not X) and Y) or ((not X) and Z);
        S1 <= (W and (not X) and (not Y) and (not Z)) or (W and X and Z) or (W and X and Y) or ((not W) and Y and Z);
        S0 <= (W and (not Y) and (not Z)) or (W and Y and Z) or ((not W) and Y and (not Z));
end behaviour;