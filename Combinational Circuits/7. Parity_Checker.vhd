-- Implements a 4-bit Even Parity Checker

-- Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: 4-bit input (Data + Parity Bit)
entity EntityParityCheck is
    port (
        Data : in  std_logic_vector(3 downto 0); -- [D3, D2, D1, D0]
        Err  : out std_logic                     -- Error signal
    );
end EntityParityCheck;

-- ARCHITECTURE PART: Logic implementation
architecture ArchitectureParityCheck of EntityParityCheck is
begin
    -- Fixed: Changed In_Data(3) to Data(3) to match the port name
    Err <= Data(3) xor Data(2) xor Data(1) xor Data(0); 
    
end ArchitectureParityCheck;
