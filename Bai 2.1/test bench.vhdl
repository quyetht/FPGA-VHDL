LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of main is
    component main is 
        port(
            clk, res, ce, load : in std_logic;
            chuc, dvi          : in std_logic_vector(3 downto 0);
            led1, led2         : out std_logic_vector(7 downto 0)
        );
        end component;
    signal clk, res, ce, load  : std_logic;
    signal chuc, dvi           : std_logic_vector(3 downto 0);
    signal led1, led2          : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            ce  => ce,
            load => load,
            chuc => chuc,
            dvi  => dvi,
            led1 => led1,
            led2 => led2
        );
        
        res <= '0';
        ce  <= '1';
        load<= '0';
        clock: process
        begin
            clk => '1';
            wait for 300ns;
            clk => '0';
            wait for 100ns;
        end process clock;

    end behavi;