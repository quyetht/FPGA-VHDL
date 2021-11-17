LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk  :  in std_logic;
            res  :  in std_logic;
            up   :  in std_logic;
            down :  in std_logic;
            led1 : out std_logic_vector(6 downto 0);
            led2 : out std_logic_vector(6 downto 0)
        );
    end component;

    signal clk, res, up, down : std_logic;
    signal led1, led2 : std_logic_vector(6 downto 0);
        
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            up => up,
            down => down,
            led1 => led1,
            led2 => led2
        );

        res <= '1';
        clock: process
        begin 
            clk <= '0';
            wait for 20ns;
            clk <= '1';
            wait for 300ns;
        end process clock;

        demlen: process
        begin
            up <= '1';
            wait for 50ns;
            up <= '0';
            wait for 20ns;
            down <= '1';
            wait for 50ns;
            down <= '0';
            wait for 20ns;
        end process demlen;
    end behavi;