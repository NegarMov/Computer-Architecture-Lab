----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:52 10/20/2021 
-- Design Name: 
-- Module Name:    JK_FF - Behavioral 
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

entity JK_FF is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is

signal TMP: std_logic;

begin

	process(CLK, RST)
		begin
				
		if (RST = '1') then
			TMP <= '0';
		elsif (CLK = '1' and CLK'EVENT) then
			if (J = '0' and K = '0') then
				TMP <= TMP;
			elsif (J = '0' and K = '1') then
				TMP <= '0';
			elsif (J = '1' and K = '0') then
				TMP <= '1';
			else
				TMP <= not TMP;
			end if;
		end if;
		
	end process;
	
	Q <= TMP;
	Q_not <= not TMP;

end Behavioral;
