LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port (
        clk  : in std_logic;
        res  : in std_logic;
        up   : in std_logic;
        down : in std_logic;
        led1 : out std_logic_vector(6 downto 0);
        led2 : out std_logic_vector(6 downto 0)
    );
    end main;

architecture behavi of main is
    signal i : std_logic_vector(3 downto 0) := "0000";
    begin
        process(clk, res, up, down)
        begin
            if(clk 'event and clk = '1') then
                if(res = '1') then
                    i <= "0000";
                elsif(up = '1') then
                    i <= i + 1;
                elsif(down = '1') then
                    i <= i - 1;
                elsif(i = "1001") then
                    i <= "0000";
                elsif(i = "0000") then
                    i <= "1001";
                end if;
            end if;
        end process;

    end behavi;