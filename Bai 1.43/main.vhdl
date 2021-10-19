--viet chuong trinh mo ta VHDL cho trigo JK co cac dau vao lap va xoa muc tich cuc cao
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        j, k: in  std_logic;
        res : in  std_logic;
        clk : in  std_logic;
        q   : out std_logic;
        qnot: out std_logic
    );
    end main;

architecture behavi of main is
    signal temp: std_logic;
    begin

        process(clk, res, j, k)
        begin
            if(res = '1') then
                temp <= '0';
            elsif(rising_edge(clk)) then
                if(j <= '0' and k <= '0') then
                    temp <= not temp;
                elsif(j <= '1' and k <= '0') then
                    temp <= '1';
                elsif(j <= '0' and k <= '1') then
                    temp <= '0';
                else
                    temp <= temp;
                end if;
            end if;
        end process;

        q <= temp;
        q <= not temp;
    end behavi;