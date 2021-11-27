LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clk : in  std_logic;
        res : in  std_logic;
        d   : in  std_logic;
        q   : out std_logic
    );
    end main;

architecture behavi of main is
    type state is(s0, s1, s2, s3);
    signal s : state;
    begin
        input1:process(clk, res, d)
        begin
            if(res = '1') then
                s <= s0;
            else
                if(clk'event and clk = '1') then
                    case s is
                        when s0 =>
                            if(d = '1') then
                                s <= s1;
                            else
                                s <= s0;
                            end if;
                        
                        when s1 =>
                            if(d = '1') then
                                s <= s2;
                            else
                                s <= s0;
                            end if;
                        
                        when s2 =>
                            if(d = '0') then
                                s <= s3;
                            else
                                s <= s2;
                            end if;
                        
                        when s3 =>
                            if(d = '1') then
                                s <= s1;
                            else
                                s <= s0;
                            end if;
                    end case;
                end if;
            end if;
            end process input1;
        
        output1: process(s, d)
        begin
            if(s = s3 and d = '1') then
                q <= '1';
            else
                q <= '0';
            end if;
        end process output1;
    end behavi;