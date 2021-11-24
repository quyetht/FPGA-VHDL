LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i : in  std_logic;
            s : in  std_logic_vector(5 downto 0);
            d : out std_logic_vector(63 downto 0)
        );
        end component;
    signal i : std_logic;
    signal s : std_logic_vector(2 downto 0);
    signal d : std_logic_vector(64 downto 0);
    begin
    
        HTQ: main port map(
            i => i,
            s => s,
            d => d
        );

        chon: process
        begin
            i <= '1';
            wait for 50ns;
            i <= '0';
            wait for 50ns;
        end process chon;

        selects: process
        begin
            s <= "00001";
            wait for 50ns;
            s <= "00111";
            wait for 50ns;
        end process selects;
    end behavi;