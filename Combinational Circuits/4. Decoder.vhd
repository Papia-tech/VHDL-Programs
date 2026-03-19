-- Implements a basic 2:4 DECODER with Enable using IF-ELSIF

library ieee;
use ieee.std_logic_1164.all;

-- ENTITY PART: Defines the inputs and outputs
entity EntityDecoder is
    port (
        E : in  std_logic;                     -- Enable pin
        S : in  std_logic_vector(1 downto 0);  -- 2-bit Select input
        Y : out std_logic_vector(3 downto 0)   -- 4-bit Output lines
    );
end EntityDecoder;

-- ARCHITECTURE PART: Defines the internal logic
architecture ArchitectureDecoder of EntityDecoder is
begin
    process(E, S)
    begin
        -- First check if the decoder is enabled
        if (E = '0') then
            Y <= "0000"; -- All outputs are OFF when E is 0
        else
            if (S = "00") then Y <= "0001"; -- Y0 is active
            elsif (S = "01") then Y <= "0010"; -- Y1 is active
            elsif (S = "10") then Y <= "0100"; -- Y2 is active
            elsif (S = "11") then Y <= "1000"; -- Y3 is active
            else Y <= "0000"; -- Default case
            end if;
        end if;
    end process;
end ArchitectureDecoder;
