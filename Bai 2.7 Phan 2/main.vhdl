-- Viet chuong trinh mo ta VHDL cho bo giai ma BCD sang led 7 doan su dung cau 
-- truc lenh when else

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i  : in  std_logic_vector(3 downto 0);
        led: out std_logic_vector(7 downto 0)
    );
    end main;

architecture behavi of main is
    begin
        led <=  "11000000" when i = "0000" else
                "11111001" when i = "0001" else
                "10110000" when i = "0010" else
                "10110000" when i = "0011" else
                "10010010" when i = "0101" else
                "10000010" when i = "0110" else
                "11111000" when i = "0111" else
                "10000000" when i = "1000" else
                "10010000";
    end behavi;