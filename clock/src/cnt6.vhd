library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cnt6 is
    port( 
        CLK,RST,EN: in std_logic;
        DOUT : out std_logic_vector(3 downto 0);
        COUT : out std_logic
    );
end cnt6;

architecture behav of cnt6 is
begin
    process(CLK,RST,EN)
        variable Q : std_logic_vector(3 downto 0);
    begin
        if RST = '0' then 
            Q := (others => '0');
        elsif CLK 'event and CLK = '1' then
            if EN = '1' then 
                if Q < 5 then 
                    Q := Q + 1;
                else 
                    Q := (others => '0');
                end if;
            end if;
        end if;
        if Q = "0101" then 
            COUT <= '1';
        else 
            COUT <= '0'; 
        end if;
        DOUT <= Q;
    end process;
end behav;