LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DECL7S IS
    PORT (
        Q: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        DOUT: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END DECL7S;

ARCHITECTURE behav OF DECL7S IS
BEGIN
    process(Q)  
    BEGIN
        CASE Q IS
            WHEN "0000" =>  DOUT <= "0111111";
            WHEN "0001" =>  DOUT <= "0000110";
            WHEN "0010" =>  DOUT <= "1011011";
            WHEN "0011" =>  DOUT <= "1001111";
            WHEN "0100" =>  DOUT <= "1100110";
            WHEN "0101" =>  DOUT <= "1101101";
            WHEN "0110" =>  DOUT <= "1111101";
            WHEN "0111" =>  DOUT <= "0000111";
            WHEN "1000" =>  DOUT <= "1111111";
            WHEN "1001" =>  DOUT <= "1101111";
            WHEN "1111" =>  DOUT <= "0000000";
            WHEN "1101" =>  DOUT <= "1000000";
            WHEN OTHERS =>  DOUT <= "0000001";
        END CASE;
    END PROCESS;
END behav;