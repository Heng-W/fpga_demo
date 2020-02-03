LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.All;

entity h_adder is
    port (
        A: IN STD_LOGIC;
        B: IN STD_LOGIC;
        SO: OUT STD_LOGIC;
        CO: OUT STD_LOGIC
    );
end entity h_adder;

architecture fh1 of h_adder is
begin
    SO <= A XOR B;
    CO <= A XOR B;
end architecture fh1;