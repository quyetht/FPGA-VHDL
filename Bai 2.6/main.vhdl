-- viet chuong trinh mo ta VHDL cho bo giai ma dia chi 3:8 voi dau vao/ra hoat dong o muc tich cuc thap
-- co mot loi vao cho phep hoat dong o muc tich cuc thap

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in  std_logic_vector(2 downto 0);
        se: in  std_logic;
        q : out std_logic_vector(7 downto 0)
    );
    end main;

architecture behavi of main is
    begin
        process(i, se)
        begin
            if(se = '0') then
                case i is
                    when "111" => q <= "11111111";
                    when "110" => q <= "11111110";
                    when "101" => q <= "11111101";
                    when "100" => q <= "11111100";
                    when "011" => q <= "11111011";
                    when "010" => q <= "11111010";
                    when "001" => q <= "11111001";
                    when others => q <= "11111000";
                end case;
            end if;
        end process;
        end behavi;