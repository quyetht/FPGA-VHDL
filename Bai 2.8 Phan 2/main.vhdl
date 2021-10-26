--viet chuong trinh mo ta VHDL cho bo giai ma BCD sang led 7 doan su dung cau truc with case

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        bcd: in std_logic_vector(3 downto 0);
        q  : out std_logic_vector(7 downto 0)
    );
    end main;
architecture behavi of main is
    begin
        with bcd select
            q <= "11000000" when "0000",
                 "11111001" when "0001",
                 "10100100" when "0010",
                 "10110000" when "0011",
                 "10011001" when "0100",
                 "10000010" when "0101",
                 "11111000" when "0110",
                 "10000000" when "0111",
                 "10010000" when others;
    end behavi;