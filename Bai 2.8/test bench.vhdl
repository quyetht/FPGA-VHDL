LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i : in  std_logic_vector(7 downto 0);
            se: in  std_logic_vector(3 downto 0);
            q : out std_logic
        );
        end component;
    signal i : std_logic_vector(7 downto 0);
    signal se: std_logic_vector(3 downto 0);
    signal q : std_logic;
    begin
        HTQ: main port map(
            i => i,
            se=> se,
            q => q
        );

        test: process
        begin
            se <= "000";
            wait for 20ns;
            se <= "001";
            wait for 20ns;
            se <= "100";
            wait for 20ns;
            se <= "101";
            wait for 20ns;
        end process test;
    end behavi;