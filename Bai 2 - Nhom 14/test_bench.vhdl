LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk : in  std_logic;
            res : in  std_logic;
            d   : in  std_logic;
            q   : out std_logic
        );
        end component;
    signal clk, res, d, q: std_logic;
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            d   => d,
            q   => q
        );
        
        reset:process
        begin
            res <= '1';
            wait for 50ns;
            res <= '0';
            wait for 500ns;
        end process reset;

        clock: process
        begin
            clk <= '0';
            wait for 50ns;
            clk <= '1';
            wait for 50ns;
        end process clock;

        test: process
        begin
            d <= '1';
            wait for 250ns;
            d <= '0';
            wait for 50ns;
        end process test;

    end behavi;