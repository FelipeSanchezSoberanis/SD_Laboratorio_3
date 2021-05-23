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
        S2 <= (W or (not X)) and (X or Y or Z);
        S1 <= (W or Y) and ((not X) or Y or Z) and ((not W) or X or (not Z)) and ((not W) or X or (not Y)) and (W or (not Y) or Z);
        S0 <= (W or Y) and (W or (not Z)) and (Y or (not Z)) and ((not W) or (not Y) or Z);
end behaviour;