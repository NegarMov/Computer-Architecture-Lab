----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:19 10/20/2021 
-- Design Name: 
-- Module Name:    D_FF - Behavioral 
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

entity D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

signal TMP: std_logic;

begin
	
	process(CLK)
		begin
				
		if (CLK = '1' and CLK'EVENT) then
			if (RST = '1') then
				TMP <= '0';
			else
				TMP <= D;
			end if;
		end if;
		
	end process;
	
	Q <= TMP;
	Q_not <= not TMP;

end Behavioral;

