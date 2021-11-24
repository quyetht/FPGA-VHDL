LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in  std_logic;
        s : in  std_logic_vector(2 downto 0);
        q : out std_logic_vector(7 downto 0)
    );
    end main;
architecture behavi of main is
    begin
        process(i, s)
        begin
            case s is
                when "000" => q(0) <= i;
                when "001" => q(1) <= i;
                when "010" => q(2) <= i;
                when "011" => q(3) <= i;
                when "100" => q(4) <= i;
                when "101" => q(5) <= i;
                when "110" => q(6) <= i;
                when "111" => q(7) <= i;
                when others => NULL;
            end case;
        end process;
    end behavi;
