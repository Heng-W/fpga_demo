LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.All;

entity or2a is
    port (
        a, b: IN STD_LOGIC;
        c: OUT STD_LOGIC
    );
end entity or2a;

architecture one of or2a is
begin
    c <= a OR b;
end architecture one;