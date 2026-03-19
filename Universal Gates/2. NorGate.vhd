-- Implements a basic 2-input NOR gate

--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityNorGate is
    port(
        A, B : in std_logic;
        O : out std_logic
    );
end EntityNorGate;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureNorGate of EntityNorGate is
begin
    O <= not(A OR B);
end ArchitectureNorGate;
