-- Implements a basic 2-input AND gate
--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityAndGate is
    port(
        A, B : in std_logic;
        O : out std_logic
    );
end EntityAndGate;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureAndGate of EntityAndGate is
begin
    O <= A AND B;
end ArchitectureAndGate;
