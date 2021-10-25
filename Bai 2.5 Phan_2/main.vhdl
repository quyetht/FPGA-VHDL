--viet chuong trinh mo ta VHDL
-- bo ma hoa uu tien 8:3 voi cac dau vao/ra hoat dong o muc tich cuc thap va co mot loi vao cho phep hoat dong 
-- o muc tich cuc thap

entity main is
    port(
        i   : in  std_logic_vector(7 downto 0);
        q   : out std_logic_vector(2 downto 0)
        en  : in  std_logic
    );
    end main

architecture behavi of main is
    begin
        process(i, en)
        begin
            if(en = 0) then
                if(i = "11111110") then
                    q <= "111";
                elsif(i = "11111101") then
                    q <= "110";
                elsif(i = "11111100") then
                    q <= "101";
                elsif(i = "11111011") then
                    q <= "100";
                elsif(i = "11111010") then
                    q <= "011";
                elsif(i = "11111001") then
                    q <= "010";
                elsif(i = "11111000") then
                    q <= "001";
                elsif (i = "11110111") then
                    q <= "000";
                end if;
            end if;
        end process;
    end behavi;