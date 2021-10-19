LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of main is
    component main is
        port(
            clk, res, set, d: in  std_logic;
            q               : out std_logic
        );
        end component;
    
    signal clk, res, set, d: std_logic;
    signal q               : std_logic;
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            set => set,
            d   => d,
            q   => q
        );

        clock: process
        begin
            wait for 30ns;
            clk <= '0';
            wait for 30ns;
            clk <= '1';
        end process clock;

        test: process
        begin   
            d <= not d after 20ns;
            res <= not res after 30ns;
            set <= not set after 50ns;
        end process test;

    end behavi;