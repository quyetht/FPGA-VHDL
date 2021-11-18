LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clk : in  std_logic;
        res : in  std_logic;
        q   : out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    signal i : std_logic_vector(3 downto 0);
    begin
        process(res, clk)
        begin 
            if(clk'event and clk = '1') then
                if(res = '1') then
                    i <= "0000";
                elsif(i <= "1001") then
                    i <= "0000";
                else
                    i <= i + 1;
                end if;
            end if;
        end process;

    end behavi;
    