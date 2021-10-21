-- viet chuong trinh mo ta VHDL cho bo dem thap phan tien 2 digit cos reset khong dong bo?
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main is
    port(
        clk, res : in std_logic;
        chuc, dvi: out std_logic_vector (3 downto 0)
    );
    end main;

architecture behavi of main is
    signal q1, q2 : std_logic_vector(3 downto 0) := "0000";
    begin
        process(clk, res)
        begin
            if(res = '1') then
                q1 <= "0000";
                q2 <= "0000";
            else
                if(rising_edge(clk)) then
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