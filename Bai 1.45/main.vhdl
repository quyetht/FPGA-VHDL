--viet chuong trinh mo ta VHDL cho trigo RS co cac dau vao xac lap va xoa muc tich cuc cao?
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        s, r : in  std_logic;
        clk  : in  std_logic;
        res  : in  std_logic;
        q    : out std_logic;
        qnot : out std_logic
    );
    end main;

architecture behavi of main is
    signal temp : std_logic := '0';
    begin
        process(s, r, clk, res)
        begin
            if(rising_edge(clk)) then
                if(res <= '1') then
                    temp <= '0';
                else
                    if(s <= '0' and r <= '0') then
                        temp <= temp;
                    elsif(s <= '0' and r <= '1') then
                        temp <= '0';
                    elsif(s <= '1' and r <= '0') then
                        temp <= '1';
                    elsif(s <= '1' and r <= '1') then
                        tmep <= 'x';
                    end if;
                end if;
            end if;
        end process;

        q    <= temp;
        qnot <= not temp;
    end behavi;
