LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            bcd : in  std_logic_vector(3 downto 0);
            q   : out std_logic_vector(7 downto 0)
        );
        end component;
    signal bcd : std_logic_vector(3 downto 0);
    signal q   : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            bcd => bcd,
            q   => q
        );

        test:process
        begin
            bcd <= "000";
            wait for 20ns;
            bcd <= "001";
            wait for 20ns;
            bcd <= "100";
            wait for 20ns;
            bcd <= "101";
            wait for 20ns;
        end process test;
    end behavi;