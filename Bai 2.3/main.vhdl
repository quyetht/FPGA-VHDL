--viet chuong trinh mo ta VHDL cho bo dem nhi phan 8 bit
-- dem tien va dem lui, clock suon am, reset khong dong bo
-- chuc nang load nap bang so dong bo
-- CE cho phep khi hoat dong o muc tich cuc thap

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity main is
    port(
        clk, res, load, ce, sel : in  std_logic;
        i                       : in  std_logic_vector(7 downto 0);
        led                     : out std_logic_vector(7 downto 0)
    );
    end main;
architecture behavi of main is
    signal q: std_logic_vector(7 downto 0);
    begin
        process(clk, res, ce, load)
        begin
            if(ce = '0') then
                if(res = '1') then
                    q <= "0000";
                elsif(clk'event and clk = '0') then
                    if(load = '1') then
                        q <= i;
                    elsif(sel = '0') then ------neu sel bang 0 thi thuc hien dem xuong
                        if(q = "00000000") then
                            q <= "11111111";
                        else
                            q <= q - 1;
                            end if;
                    elsif(sel = '1') then --------neu sel bang 1 thi thuc hien dem len
                        if(q = "11111111") then
                            q <= "00000000";
                        else
                            q <= q + 1;
                        end if;
                    end if;
                end if;
            end if;
        end process;

        led <= q;
    end behavi;