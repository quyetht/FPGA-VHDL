LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity main is
    port(
        clr, clk : in std_logic;
        count    : out std_logic_vector(3 downto 0)
    );
    end main;

architecture behavi of main is
    component JK_FF is
        port(
            j, k     : in std_logic;
            clk, clr : in std_logic;
            q, qnot  : out std_logic
        );
        end component;

        signal x, y, q1, q2, q3, q4, qnot1, qnot2, qnot3, qnot4 : std_logic := '0';
    begin
        
        x <= qnot1 and qnot2;
        y < qnot1 and qnot2 and qnot3;
        
        f1: FF_JK port map('1', '1', clk, clr, q1, qnot2);
        f2: FF_JK port map(qnot1, qnot1, clr, clk, q2, qnot2);
        f3: FF_JK port map(x, x, clr, clk, q3, qnot3);
        f4: FF_JK port map(y, y, clr, clk, q4, qnot4);

        cout <= q4 & q3 & q2 & q1;
    end behavi;