-- Implements a basic 4:1 MUX

--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityMUX is
    port (
        S : in std_logic_vector(1 downto 0);
        A, B, C, D : in std_logic;
        y : out std_logic
    );
end EntityMux;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureMUX of EntityMUX is
begin
    process(S, A, B, C, D)
    begin
        if (S = "00") then y <= A;
        elsif (S = "01") then y <= B;
        elsif (S = "10") then y <= C;
        else y <= D;
        end if; 
    end process;
end ArchitectureMUX;
