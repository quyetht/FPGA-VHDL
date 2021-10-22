--viết chương trình mô tả VHDL cho bộ đếm thâp phân tiến 2 diit có Reset đồng bộ?
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clk, res : in  std_logic;
        chuc, dvi: out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    signal q1, q2 : std_logic_vector(3 downto 0);
    begin
        process(clk, res)
        begin
            if(rising_edge(clk)) then
                if(res = '1') then
                    q1 <= "0000";
                    q2 <= "0000";
                else
                    if(q2 = "1001") then
                        q2 <= "0000";
                        if(q1 = "1001") then
                            q1 <= "0000";
                        else
                            q1 <= q1 + 1;
                        end if;
                    else
                        q2 <= q2 + 1;
                    end if;
                end if;
            end if;
        end process;

        chuc <= q1;
        dvi  <= q2;
    end behavi;