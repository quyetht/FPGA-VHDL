LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is;
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk : in  std_logic;
            res : in  std_logic;
            q   : out std_logic
        );
        end component;

    signal clk : std_logic;
    signal res : std_logic;
    signal q   : std_logic;
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            q   => q
        );

        res <= '0';
        clock: process
        begin
            clk <= '0';
            wait for 50ns;
            clk <= '1';
            wait for 300ns;
        end process clock;
        
        end behavi;

