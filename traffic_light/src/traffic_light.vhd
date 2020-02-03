library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity traffic_light is
    port (
        clk, reset: in std_logic;
        q: out std_logic_vector(5 downto 0)--南北方向红黄绿，东西方向红黄绿
    );
end traffic_light;

architecture behav of traffic_light is
    type states is (S0, S1, S2, S3);
    signal state: states;
begin
    REGCOM: process (CLK, reset)
        variable s: integer range 0 to 40;
    begin
        if reset = '0' then 
            state <= S0;
        elsif clk 'event and CLK = '1' then 
            s := s + 1; 
            case state is
                when S0 =>      --南北绿灯
                    if S = 30 then 
                        state <= S1;
                        s := 0;   
                    else 
                        state <= S0;
                    end if;    
                when S1 => 
                    if S = 5 then 
                        state <= S2;
                        s := 0;    
                    else
                        state <= S1;
                    end if;
                when S2 =>      --东西绿灯
                    if S = 30 then 
                        state <= S3;
                        s := 0;
                    else state <= S2;
                    end if;    
                when S3 => 
                    if S = 5 then 
                        state <= S0;
                        s := 0; 
                    else 
                        state <= S3;
                    end if;
            end case;
        end if;
    end process REGCOM;

    COM: process (state)
    begin
        case state IS
            when S0 =>  q <= "001100";
            when S1 =>  q <= "010100";
            when S2 =>  q <= "100001";
            when S3 =>  q <= "100010";
        end case;
    end process COM;
end behav;