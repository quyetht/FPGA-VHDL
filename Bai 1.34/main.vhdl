-- Viet mo ta VHDL cho mach bien doi ma Gray sang Binary su dung cau lenh song song
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in std_logic_vector(3 downto 0);
        z : out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    begin
        z <=    "0000" when i = "0000" else
                "0001" when i = "0001" else
                "0010" when i = "0011" else
                "0011" when i = "0010" else
                "0100" when i = "0110" else
                "0101" when i = "0111" else
                "0110" when i = "0101" else
                "0111" when i = "0100" else
                "1000" when i = "1100" else
                "1001" when i = "1101" else
                "1010" when i = "1111" else
                "1011" when i = "1110" else
                "1100" when i = "1010" else
                "1101" when i = "1011" else
                "1110" when i = "1001" else
                "1111";
    end behavi;