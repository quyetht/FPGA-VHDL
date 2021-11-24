LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        i : in std_logic;
        s : in std_logic_vector(5 downto 0);
        d : out std_logic_vector(63 downto 0)
    );
    end main;

architecture behavi of main is
    component mux1_8 is
        port(
            i : in  std_logic;
            s : in  std_logic_vector(2 downto 0);
            q : out std_logic_vector(7 downto 0)
        );
        end component;
        signal q: std_logic_vector(7 downto 0);
    begin
        u0: mux1_8 port map(i, s(2 downto 0), q);
        u1: mux1_8 port map(q(0), s(5 downto 3), d(0  to 7));
        u2: mux1_8 port map(q(1), s(5 downto 3), d(8  to 15));
        u3: mux1_8 port map(q(2), s(5 downto 3), d(16 to 23));
        u4: mux1_8 port map(q(0), s(5 downto 3), d(24 to 31));
        u5: mux1_8 port map(q(3), s(5 downto 3), d(32 to 39));
        u6: mux1_8 port map(q(4), s(5 downto 3), d(40 to 47));
        u7: mux1_8 port map(q(5), s(5 downto 3), d(48 to 55));
        u8: mux1_8 port map(q(6), s(5 downto 3), d(56 to 63));
    end behavi;