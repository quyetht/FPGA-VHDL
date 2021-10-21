LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_bench is
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk, res: in  std_logic;
            chuc, dvi:out std_logic_vector(3 downto 0)
        );
        end component;
    signal clk, res : std_logic;
    signal chuc, dvi: std_logic_vector(3 downto 0);
    begin
        HTQ: main port map (
            clk  => clk,
            res  => res,
            chuc => chuc,
            dvi  => dvi
        );

        clock:process
        begin
            clk <= '1';
            wait for 20ns;
            clk <= '0';
            wait for 20ns;
        end process clock;

        test: process
        begin
            res <= '1';
            wait for 50ns;
            res <= '0';
            wait for 500ns;
        end process test;

    end behavi;