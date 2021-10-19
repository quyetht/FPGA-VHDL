LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_banch is
end test_banch;

architecture behavi of main is
    component main is
        port(
            j, k : in  std_logic;
            res  : in  std_logic;
            clk  : in  std_logic;
            q    : out std_logic
        );
    end component;

    signal j, k, res, clk, q : std_logic;
    begin
        HTQ: main port map (
            j   => j,
            k   => k,
            res => res,
            clk => clk, 
            q   => q
        );

        clock: process
        begin
            clk <= '1';
            wait for 20ns;
            clk <= '0';
            wait for 20ns;
        end process clock;
        
        test: process
        begin
            res <= not res after 20ns;
            j <= not j after 30ns;
            k <= not k after 50ns;
        end process test;
        
        end behavi;