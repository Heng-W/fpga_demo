library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity div1000 is
    port ( 
        clk:in std_logic;
        fclk:out std_logic
    );
end div1000;

architecture bhv of div1000 is 
    signal ck: std_logic;
begin
    process(clk)
        variable counter: integer range 0 to 100000;
    begin
        if (clk'event and clk='1') then
            if(counter = 99999) then 
                    counter := 0;
                    ck <= not ck;
            else
                    counter := counter + 1;
            end if;
        end if;
    end process;
    fclk<=ck;
end bhv;
