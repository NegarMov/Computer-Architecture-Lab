----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:15 12/27/2021 
-- Design Name: 
-- Module Name:    REGx8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGx8 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end REGx8;

architecture Behavioral of REGx8 is

signal TMP: STD_LOGIC_VECTOR (7 downto 0);

begin
	
	process(CLK)
		begin
		if (CLK = '1' and CLK'EVENT) then
			if (RST = '1') then
				TMP <= (others => '0');
			elsif (LOAD = '1') then
				TMP <= D;
			else
				TMP <= TMP;
			end if;
		end if;
	end process;
	
	Q <= TMP;

end Behavioral;



