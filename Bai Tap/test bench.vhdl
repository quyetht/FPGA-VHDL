LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164;

entity test_bench is
    end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            clr, clk : in std_logic;
            count    : out std_logic_vector(3 downto 0)
        );
        end component;

        signal clk, clr : std_logic := '0';
        signal count    : std_logic_vector(3 downto 0);
    begin
        HTQ: port map (
            clk => clk,
            clr => clr,
            count => count
        );

        clr <= '1';
        clk <= not clk after 20ns;

    end behavi;