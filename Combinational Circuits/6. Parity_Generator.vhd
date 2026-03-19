-- Implements a 3-bit Even Parity Generator

-- Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: 3-bit input data, 1-bit parity output
entity EntityParityGen is
    port (
        D : in  std_logic_vector(2 downto 0); -- 3-bit Data Input
        P : out std_logic                     -- Generated Parity Bit
    );
end EntityParityGen;

-- ARCHITECTURE PART: Logic implementation
architecture ArchitectureParityGen of EntityParityGen is
begin
    P <= D(2) xor D(1) xor D(0); --  Even Parity Logic: XOR all input bits; P = D(2) XOR D(1) XOR D(0) 
end ArchitectureParityGen;
