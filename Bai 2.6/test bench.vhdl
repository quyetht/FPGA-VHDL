LIBRARY IEEE;
USE IEEE.STD_LIGIC_1164.ALL;

entity test_bench is;
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i : in  std_logic_vector(2 downto 0);
            se: in  std_logic;
            q : out std_logic_vector(7 downto 0)
        );
        end component;

    signal i : std_logic_vector(2 downto 0);
    signal se: std_logic;
    signal q : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            i => i,
            se=> se,
            q => q
        );

        enable: process
        begin
            se <= '1';
            wait for 200ns;
            se <= '0';
            wait for 50ns;
        end process enable;

        test:process
        begin
            i <= "111";
            wait for 20ns;
            i <= "110";
            wait for 20ns;
            i <= "100";
            wait for 20ns;
        end process test;
    end behavi;