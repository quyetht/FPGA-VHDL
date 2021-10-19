-- Viet mo ta VHDL cho mach bien doi ma Gray sang Binary su dung cau lenh tuan tu
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in  std_logic_vector(3 downto 0);
        z : out std_logic_vector(3 downto 0)
    );
end main;

architecture behavi of main is
    begin
        process(z)
        begin
            case z is
                "0000" when i <= "0000";
                "0001" when i <= "0001";
                "0010" when i <= "0011";
                "0011" when i <= "0010";
                "0100" when i <= "0110";
                "0101" when i <= "0111";
                "0110" when i <= "0101";
                "0111" when i <= "0100";
                "1000" when i <= "1100";
                "1001" when i <= "1101";
                "1010" when i <= "1111";
                "1011" when i <= "1110";
                "1100" when i <= "1010";
                "1101" when i <= "1011";
                "1110" when i <= "1001";
                "1111" when others;
            end case;
        end process;
    end behavi;

        
