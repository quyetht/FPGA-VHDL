LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity test_bench is
end test_bench;

architecture behavi of test_bench is
    component main is
        port(
            i : in  std_logic;
            s : in  std_logic_vector(0 to 5);
            d : out std_logic_vector(0 to 63)
        );
        end component;
    signal i : std_logic;
    signal s : std_logic_vector(0 to 5) := (others => '0');
    signal d : std_logic_vector(0 to 63):= (others => '0');
    begin
    
        HTQ: main port map(
            i => i,
            s => s,
            d => d
        );
        
        selects: process
        begin
            i <= '1';
            wait for 100ns;
            i <= '0';
            wait for 100ns;
            end process selects;
        
        chon: process
        begin 
            for i in 1 to 63 loop
                s <= conv_std_logic_vector(i, 6);
                wait for 100ns;
            end loop;
            wait;
        end process;
        
    end behavi;