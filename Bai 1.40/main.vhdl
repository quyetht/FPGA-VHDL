-- Viet chuong trinh mo ta VHDL mo ta bo dem nhi phan don gian
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clk: in  std_logic;
        q  : out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    signal count: std_logic_vector(3 downto 0) := "0000";
    begin
        process(clk)
        begin
            if(rising_edge(clk)) then
                count  <= count + 1;
            end if;
        end process;
        q <= count;
    end behavi;