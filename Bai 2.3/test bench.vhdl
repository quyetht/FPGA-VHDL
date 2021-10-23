LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk, res, load, ce, sel : in std_logic;
            i                       : in std_logic_vector(7 downto 0);
            led                     : out std_logic_vector(7 downto 0)
        );
        end component;

    signal clk, res, load, ce, sel : std_logic;
    signal i, led                  : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            clk  => clk,
            res  => res,
            load => load,
            ce   => ce,
            sel  => sel,
            i    => i;
            led  => led 
        );

        res <= '0';
        load <= '0';
        ce <= '0';

        clock: process
        begin
            clk <= '1';
            wait for 20ns;
            clk <= '0';
            wait for 20ns;
        end process clock;

        test: process
        begin
            sel <= '1';
            wait for 300ns;
            sel <= '0';
            wait for 200ns;
        end process test;
    end behavi;