-- Description: Simple 2-input OR logic

-- Library Declaration: Imports standard logic types
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityOrGate is
    port(
        A, B : in std_logic;
        O : out std_logic
    );
end EntityOrGate;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureOrGate of EntityOrGate is
begin
    O <= A OR B;
end ArchitectureOrGate;
