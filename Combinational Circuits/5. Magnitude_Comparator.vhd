-- Implements a basic 2-bit MAGNITUDE COMPARATOR

-- Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityMagnitudeComparator is
    port (
        A, B : in  std_logic_vector(1 downto 0); -- Two 2-bit numbers
        G, E, L : out std_logic                  -- G = A > B; E = A = B; L = A < B
    );
end EntityMagnitudeComparator;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureMagnitudeComparator of EntityMagnitudeComparator is
begin
    process(A, B)
    begin
        -- Initialize all outputs to '0' (Crucial to avoid latches!)
        G <= '0';
        E <= '0';
        L <= '0';

        if (A > B) then G <= '1';
        elsif (A < B) then L <= '1';
        else E <= '1';
        end if;
    end process;
end ArchitectureMagnitudeComparator;
