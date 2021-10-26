LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i : in  std_logic_vector(7 downto 0);
            se: in  std_logic_vector(2 downto 0);
            q : out std_logic
        );
        end component;
    signal i : std_logic_vector(7 downto 0);
    signal se: std_logic_vector(2 downto 0);
    signal q : std_logic;
    begin
        HTQ: main port map(
            i => i,
            se=> se,
            q => q
        );
        
        i <= "11010101";
        enable: process
        begin
            se <= "111";
            wait for 20ns;
            se <= "110";
            wait for 20ns;
            se <= "010";
            wait for 20ns;
            se <= "101";
            wait for 20ns;
        end process enable;
    end behavi;