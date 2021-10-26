-- viet chuong trinh mo ta VHDL cho bo MUX 8:1 su dung cau truc case

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in  std_logic_vector(7 downto 0);
        se: in  std_logic_vector(2 downto 0);
        q : out std_logic
    );
    end main;

architecture behavi of main is
    begin
        process(se)
        begin
            case se is
                when "000" => q <= i(0);
                when "001" => q <= i(1);
                when "010" => q <= i(2);
                when "011" => q <= i(3);
                when "100" => q <= i(4);
                when "101" => q <= i(5);
                when "110" => q <= i(6);
                when others => q <= i(7);
            end case;
        end process;
    end behavi;