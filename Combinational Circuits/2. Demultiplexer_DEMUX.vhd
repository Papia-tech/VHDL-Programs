-- Implements a basic 1:4 DEMUX

--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityDEMUX is
    port (
        I : in std_logic;
        S : in std_logic_vector(1 downto 0);
        y0, y1, y2, y3 : out std_logic
    );
end EntityDEMUX;

-- ARCHITECTURE PART: Defines the internal logic
architecture architectureDEMUX of EntityDEMUX is
begin
    process(I, S)
    begin
        -- 1. Initialize all outputs to '0' first
        y0 <= '0';
        y1 <= '0';
        y2 <= '0';
        y3 <= '0';

        -- 2. Now 'overwrite' the specific output based on S
        if (S = "00") then y0 <= I;
        elsif (S = "01") then y1 <= I;
        elsif (S = "10") then y2 <= I;
        else y3 <= I;
        end if;
    end process;
end architectureDEMUX;
