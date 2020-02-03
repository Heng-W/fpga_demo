LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.All;

entity f_adder is
    port (
        ain,bin,cin: IN STD_LOGIC;
        cout,sum: OUT STD_LOGIC
    );
end entity f_adder;

architecture fd1 of f_adder is
    component h_adder
        port (
            A,B: IN STD_LOGIC;
            CO,SO: OUT STD_LOGIC
        );
    end component;

    component or2a 
        port (
            a,b: IN STD_LOGIC;
            c: OUT STD_LOGIC
        );
    end component;
  
    signal net1,net2,net3:STD_LOGIC;
begin
    u1: h_adder 
        port map (A => ain, B => bin, CO => net2, SO => net1);
    u2: h_adder 
        port map (net1, cin, net3, sum);
    u3: or2a 
        port map (a => net2, b => net3, c => cout);
end architecture fd1;