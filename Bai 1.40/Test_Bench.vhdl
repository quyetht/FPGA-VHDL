LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of main is
    component main is
        port(
            clk: in std_logic;
            q  : out std_logic_vector(3 downto 0)
        );
        end component;
    
        signal clk: std_logic;
        signal q  : std_logic_vector(3 downto 0);
    begin

        HTQ: main port map(
            clk => clk,
            q => q
        );

        clk <= not clk after 50ns;

    end behavi;