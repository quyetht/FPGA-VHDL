-- viet chuong trinh VHDL cho 2 mach to hop sau
-- bo DEMUX 1:8 bang cau truc if ..... else

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i   : in  std_logic_vector;
        sel : in  std_logic_vector(2 downto 0);
        q   : out std_logic_vector(7 downto 0)
    );
    end main;

architecture behavi of main is
    begin
        process(i, sel)
        begin
            if(sel = "000") then
                q(0) <= i;
            elsif(sel = "001") then
                q(1) <= i;
            elsif(sel = "010") then
                q(2) <= i;
            elsif(sel = "011") then
                q(3) <= ;
            elsif(sel = "100") then
                q(4) <= i;
            elsif(sel = "101") then
                q(5) <= i;
            elsif(sel = "110") then
                q(6) <= i;
            elsif(sel = "111") then
                q(7) <= i;
            end if;
        end process;
    end behavi;