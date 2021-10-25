LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i   : in  std_logic;
            sel : in  std_logic_vector(2 downto 0);
            q   : out std_logic_vector(7 downto 0)
        );
        end component;

    signal i   : std_logic;
    signal sel : std_logic_vector(2 downto 0);
    signal q   : std_logic_vector(7 downto 0);
    begin
        HTQ: main port map(
            i   => i,
            sel => sel,
            q   => q
        );

        clock: process
        begin
            clk => '1';
            wait for 50ns;
            clk => '0';
            wait for 50;
        end process clock;

        test: process
        begin
            sel => "000";
            wait for 20ns;
            sel => "001";
            wait for 20ns;
            sel => "010";
            wait for 20ns;
            sel => "011";
            wait for 20ns;
            sel => "100";
            wait for 20ns;
            sel => "101";
            wait for 20ns;
            sel => "110";
            wait for 20ns;
            sel => "111";
            wait for 20ns;
        end process test;


    end behavi;