LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity mux1_8 is
    port(
        i : in  std_logic;
        s : in  std_logic_vector(0 to 2);
        z : out std_logic_vector(0 to 7)
    );
    end mux1_8;
architecture behavi of mux1_8 is
    begin
        process(i, s)
        begin
            case s is
                when "000" => z(0) <= i;
                when "001" => z(1) <= i;
                when "010" => z(2) <= i;
                when "011" => z(3) <= i;
                when "100" => z(4) <= i;
                when "101" => z(5) <= i;
                when "110" => z(6) <= i;
                when "111" => z(7) <= i;
                when others => NULL;
            end case;
        end process;
    end behavi;
