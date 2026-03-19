-- Implements a basic 4:2 ENCODER

-- Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityEncoder is
    port (
        D : in  std_logic_vector(3 downto 0); -- 4 Input lines
        Y : out std_logic_vector(1 downto 0)  -- 2 Output lines (Binary Code)
    );
end EntityEncoder;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureEncoder of EntityEncoder is
begin
    process(D)
    begin
        -- Using a Priority-style check to avoid undefined states
        if (D = "1000") then 
            Y <= "11"; -- D3 is active (Binary 3)
        elsif (D = "0100") then 
            Y <= "10"; -- D2 is active (Binary 2)
        elsif (D = "0010") then 
            Y <= "01"; -- D1 is active (Binary 1)
        elsif (D = "0001") then 
            Y <= "00"; -- D0 is active (Binary 0)
        else 
            Y <= "00"; -- Default/Undefined state
        end if;
    end process;
end ArchitectureEncoder;
            
