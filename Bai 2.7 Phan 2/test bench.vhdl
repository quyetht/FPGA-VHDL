LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i  : in  std_logic_vector(3 downto 0);
            led: out std_logic_vector(7 downto 0)
        );
        end component;

    signal i  :  std_logic_vector(3 downto 0);
    signal led: std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            i   => i,
            led => led
        );

        test: process
        begin
            i <= "1000";
            wait for 20ns;
            i <= "0001";
            wait for 20ns;
            i <= "0010";
            wait for 20ns;
            i <= "0000";
            wait for 20ns;
        end process test;
    end behavi;