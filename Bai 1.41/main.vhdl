-- viet mo ta VHDL cho trigo D co cac dau vao lajp va xoa mua tich cuc cao

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clk, res, set, d: std_logic;
        q               : std_logic

    );
    end main;

architecture behavi of main is
    begin
        process(clk, res, set)
        begin
            if(rising_edge(clk)) then
                if(res = '1') then
                    q <= '0';
                elsif(set = '1') then
                    q <= '1';
                else
                    q <= d;
                end if;
            end if;
        end process;
    end behavi;