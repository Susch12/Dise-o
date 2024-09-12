----- EJEMPLO 1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Display is
    Port ( w, x, y, z : in STD_LOGIC;
            A, B, C, D, E, F, G : out STD_LOGIC);
end Display;

architecture Behavioral of Display is

begin

-- A = w'x'y'z + w'xy'z' + wxy'z + wx'yz
A <= (not w and not x and not y and z) or (not w and x and not y and not z) or (w and x and not y and z) or (w and not x and y and z);

-- B = xyz' + wyz + wxz' + w'xy'z
B <= (x and y and not z) or (w and y and z) or (w and x and not z) or (not w and x and not y and z);

-- C = wxy + wxz' + w'x'yz'
C <= (w and x and y) or (w and x and not z) or (not w and not x and y and not z);

-- D = xyz + w'x'y'z + w'xy'z' + wx'yz'
D <= (x and y and z) or (not w and not x and not y and z) or (not w and x and not y and not z) or (w and not x and y and not z);

-- E = w'z + w'xy' + x'y'z
E <= (not w and z) or (not w and x and not y) or (not x and not y and z);

-- F = w'x'z + w'yz + w'x'y + wxy'z
F <= (not w and not x and z) or (not w and y and z) or (not w and not x and y) or (w and x and not y and z);

-- G = w'x'y' + w'xyz + wxy'z'
G <= (not w and not x and not y) or (not w and x and y and z) or (w and x and not y and not z);

end Behavioral;
