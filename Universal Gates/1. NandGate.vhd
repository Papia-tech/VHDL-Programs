-- Implements a basic 2-input NAND gate

--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityNandGate is
    port(
        A, B : in std_logic;
        O : out std_logic
    );
end EntityNandGate;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureNandGate of EntityNandGate is
begin
    O <= not(A AND B);
end ArchitectureNandGate;
