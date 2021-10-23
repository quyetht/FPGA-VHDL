LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164;

entity test_bench is
    end test_bench;

architecture behavi of main is
    component main is 
        port(
            clk, res, load, ce  : in  std_logic;
            chuc, dvi           : in  std_logic_vector(3 downto 0);
            led1, led2          : out std_logic_vector(7 downto 0)
        );
        end component;

    signal clk, res, load, ce   : std_logic;
    signal chuc, dvi            : std_logic_vector(3 downto 0);
    signal led1, led2           : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            clk  => clk,
            res  => res,
            load => load,
            ce   => ce,
            chuc => chuc,
            dvi  => dvi,
            led1 => led1,
            led2 => led2
        );
        load <= '0';
        ce   <= '0';
        clock: process
        begin
            clk <= '1';
            wait for 50ns;
            clk <= '0';
            wait for 50ns;
        end process clock;

        test: process
        begin
            res <= '1';
            wait for 200ns;
            res <= '0';
            wait for 50ns;
        end process test;
    end behavi;