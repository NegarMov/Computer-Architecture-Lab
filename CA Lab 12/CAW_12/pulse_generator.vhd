----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:20 12/27/2021 
-- Design Name: 
-- Module Name:    SCx2 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

entity pulse_generator is
	generic ( pulse_count : integer := 5 );
	Port (CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
         output : out  STD_LOGIC_VECTOR((pulse_count - 1) downto 0));
end pulse_generator;

architecture Behavioral of pulse_generator is

	signal zero: STD_LOGIC_VECTOR((pulse_count - 1) downto 0) := (others => '0');
	signal TMP: STD_LOGIC_VECTOR((pulse_count - 1) downto 0);
	
begin

	process(CLK) 
	begin
		if (CLK = '1' and CLK'EVENT) then
			if (RST = '1') then
				TMP <= zero + '1';
			else
				TMP <= TMP((pulse_count - 2) downto 0) & TMP(pulse_count - 1);
			end if;
		end if;
	end process;
	
	output <= TMP;
	
end Behavioral;

