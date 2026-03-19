-- Implements a basic 4:2 ENCODER

--Library declaration
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity Encoder4to2 is
    port (
        D : in  std_logic_vector(3 downto 0); -- 4 Input lines
        Y : out std_logic_vector(1 downto 0)  -- 2 Output lines (Binary Code)
    );
end Encoder4to2;

-- ARCHITECTURE PART: Defines the internal logic
architecture Behavioral of Encoder4to2 is
begin
    process(D)
    begin
        -- Using a Priority-style check to avoid undefined states
        if (D = "1000") then Y <= "11"; -- D3 is active
        elsif (D = "0100") then Y <= "10"; -- D2 is active
        elsif (D = "0010") then Y <= "01"; -- D1 is active
        elsif (D = "0001") then Y <= "00"; -- D0 is active
        else Y <= "00"; -- Undefined
        end if;
    end process;
end Behavioral; Behavioral;
