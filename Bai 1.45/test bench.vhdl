LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of main is
    component main is
        port(
            r, s: in  std_logic;
            clk : in  std_logic;
            res : in  std_logic;
            q   : out std_logic;
            qnot: out std_logic
        );
        end component;
    signal r, s, clk, res, q, qnot : std_logic;
    begin
        res <= '0';
        HTQ: main port map(
            r    => r,
            s    => s,
            clk  => clk,
            res  => res,
            q    => q,
            qnot => qnot
        );

        clock: process
        begin
            clk <= '1';
            wait for 20ns;
            clk <= '0';
            wait for 20ns;
        end process clock;

        test: process
        begin
            r <= '1';
            s <= '0';
            wait for 20ns;
            r <= '1';
            s <= '1';
            wait for 20ns;
            r <= '0';
            s <= '0';
            wait for 20ns;
            r <= '0';
            s <= '1';
            wait for 20ns;
        end process test;
    end behavi;

            
