LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity main is
    port(
        clk : in std_logic;
        res : in std_logic;
        led : out std_logic_vector(7 downto 0)
    );
    end main;

architecture behavi of main is
    signal dem   : integer range 0 to 9 := 0;
    signal clk1hz: bit;
    begin
        process(res, clk)
        begin
            if(res = '1') then
                dem <= 0;
            elsif(clk'event and clk = '1') then
                if(dem = 9) then
                    dem <= 0;
                    clk1hz <= not clk1hz;
                else
                    dem <= dem + 1;
                end if;
            end if;
        end process;

        process(clk1hz)
        begin
            if(clk1hz 'event and clk1hz = '1') then
                led <= "00000000";
            else
                led <= "10101010";
            end if;
        end process;
    end behavi;
