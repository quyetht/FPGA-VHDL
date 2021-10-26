-- viet chuong trinh VHDL mo ta bo MUX 8:1 su dung cau truc lenh if...case

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in  std_logic_vector(7 downto 0);
        se: in  std_logic_vector(3 downto 0);
        q : out std_logic
    );
    end main;

architecture behavi of main is
    begin
        process(i, se)
        begin
            if(se = "000") then
                q <= i(0);
            elsif(se = "001") then
                q <= i(1);
            elsif(se = "010") then
                q <= i(2);
            elsif(se = "011") then
                q <= i(3);
            elsif(se = "100") then
                q <= i(4);
            elsif(se = "101") then
                q <= i(5);
            elsif(se = "110") then
                q <= i(6);
            elsif(se = "111") then
                q <= i(7);
            end if;
        end process;
    end behavi;