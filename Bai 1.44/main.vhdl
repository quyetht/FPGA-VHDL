LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        j, k : in  std_logic;
        res  : in  std_logic;
        clk  : in  std_logic;
        q    : out std_logic
    );
end main;

architecture behavi of main is
    signal temp : std_logic;
    begin
        process(clk)
        begin
            if(clk'event and clk = '0') then
                if(res = '0') then
                    temp <= '0';
                else
                    if(j = '0' and k = '0') then
                        temp = temp;
                    elsif(j = '0' and k = '1') then
                        temp <= '0';
                    elsif(j = '1' and k = '0') then
                        temp <= '1';
                    elsif(j = '1' and k = '1') then
                        temp <= not temp;
                    end if;
                end if;
            end if;
        end process;
        q <= temp;
    end behavi;