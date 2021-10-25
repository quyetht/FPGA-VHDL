LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of main is
    component main is
        port(
            i : in  std_logic_vector(7 downto 0);
            en: in  std_logic;
            q : out std_logic_vector(2 downto 0)
        );
        end component;

    signal i : std_logic_vector(7 downto 0);
    signal en: std_logic;
    signal q : std_logic_vector(2 downto 0);
    begin
        HTQ: main port map(
            i => i,
            en=> en,
            q => q
        );

        enable: process
        begin
            en <= '1';
            wait for 100ns;
            en <= '0';
            wait for 50ns;
            end process enable;

        test: process
        begin
            i <= "11111111";
            wait for 20ns;
            i <= "11110111";
            wait for 20ns;
            end process test;
    end behavi;