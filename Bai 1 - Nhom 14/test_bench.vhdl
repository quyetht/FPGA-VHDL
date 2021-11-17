LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clk : in std_logic;
            res : in std_logic;
            led : out std_logic_vector(7 downto 0)
        );
        end component;
    signal clk : std_logic;
    signal res : std_logic;
    signal led : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            clk => clk,
            res => res,
            led => led
        );

        res <= '0';
        clock: process
        begin
            clk <= '0';
            wait for 500ms;
            clk <= '1';
            wait for 500ms;
        end process clock;
    end behavi;