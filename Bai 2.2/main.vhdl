-- viet chuong trinh mo ta VHDL cho bo dem lui mod 90
-- clock suon am, chuc nang reset khong dong bo
-- chuc nang load nap bang so dong bo, chuc nang cho phep CE hoat dong muc tich cuc thap

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UnSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity main is
    port(
        clk, res, load, ce : in  std_logic;
        chuc, dvi          : in  std_logic_vector(3 downto 0);
        led1, led2         : out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    signal q1, q2: std_logic_vector(3 downto 0) := "0000";
    begin
        process(clk, res)
        begin
            if(ce = '1') then
                if(res = '1') then
                    q1 <= "0000";
                    q2 <= "0000";
                else
                    if(clk'even and clk = '0') then
                        if(load = '1') then
                            q1 <= chuc;
                            q2 <= dvi;
                        else
                            q2 <= q2 - 1;
                            end if;
                        if(q2 = "1111") then
                            q2 <= "1001";
                            q1 <= q1 - 1;
                            end if;
                        if(q1 = "1111") then
                            q1 <= "1000";
                            end if;
                    end if;
                end if;
            end if;
        end process;

        process(q2)
        begin
            case q2 is
                when x"0" => led2 <= "11000000";
                when x"1" => led2 <= "11111001";
                when x"2" => led2 <= "10100100";
                when x"3" => led2 <= "10110000";
                when x"4" => led2 <= "10011001";
                when x"5" => led2 <= "10010010";
                when x"6" => led2 <= "10000010";
                when x"7" => led2 <= "11111000";
                when x"8" => led2 <= "10000000";
                when x"9" => led2 <= "10010000";
                when others => led2 <= "zzzzzzzz";
            end case;
        end process;

        process(q1)
        begin
            case q1 is
                when x"0" => led1 <= "11000000";
                when x"1" => led1 <= "11111001";
                when x"2" => led1 <= "10100100";
                when x"3" => led1 <= "10110000";
                when x"4" => led1 <= "10011001";
                when x"5" => led1 <= "10010010";
                when x"6" => led1 <= "10000010";
                when x"7" => led1 <= "11111000";
                when x"8" => led1 <= "10000000";
                when x"9" => led1 <= "10010000";
                when others => led1 <= "zzzzzzzz";
            end case;
        end process;

        end behavi;
                        

