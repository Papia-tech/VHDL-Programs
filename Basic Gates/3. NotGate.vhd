-- Description: Simple 1-input Not logic

---- Library Declaration: Imports standard logic types
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityNotGate is
    port(
        A : in std_logic;
        O : out std_logic
    );
end EntityNotGate;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureNotGate of EntityNotGate is
begin
    O <= not(A);
end ArchitectureNotGate;
