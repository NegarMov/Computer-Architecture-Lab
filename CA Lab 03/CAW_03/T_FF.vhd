----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:27 10/20/2021 
-- Design Name: 
-- Module Name:    T_FF - Behavioral 
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

entity T_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is

signal TMP: std_logic;

begin

	process(CLK, RST)
		begin
				
		if (RST = '1') then
			TMP <= '0';
		elsif (EN = '1' and CLK = '1' and CLK'EVENT) then
			if (T = '0') then
				TMP <= TMP;
			else
				TMP <= not TMP;
			end if;
		end if;
		
	end process;
	
	Q <= TMP;
	Q_not <= not TMP;

end Behavioral;

