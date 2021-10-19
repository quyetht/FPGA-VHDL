LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
end main;

architecture behavi of main is
    component main is
        port(
            i : in std_logic_vector(3 downto 0);
            z : out std_logic_vector(3 downto 0)
        );
    end component;

    signal i: std_logic_vector(3 downto 0) := "0000";
    signal z: std_logic_vector(3 downto 0);
    begin
    HTQ: main port map(
        i => i,
        z => z
    );

    test1: process
    begin  
        for i in 0 to 15 loop
            wait for 20ns;
            i <= i + 1;
        end loop;
    end process test1;
    end behavi;