----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:54 12/08/2021 
-- Design Name: 
-- Module Name:    ALUx8 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALUx8 is
	 generic ( width : integer := 8; sel_width : integer := 3 );
    Port ( Sel : in  STD_LOGIC_VECTOR ((sel_width - 1) downto 0);
           A : in  STD_LOGIC_VECTOR ((width - 1) downto 0);
           B : in  STD_LOGIC_VECTOR ((width - 1) downto 0);
           O : out  STD_LOGIC_VECTOR ((width - 1) downto 0);
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC);
end ALUx8;

architecture Behavioral of ALUx8 is

signal zero : STD_LOGIC_VECTOR ((width - 1) downto 0) := (others => '0');
signal result : STD_LOGIC_VECTOR ((width - 1) downto 0);
signal sum_result : STD_LOGIC_VECTOR (width downto 0);

begin

	process(Sel, A, B)
	begin
		case Sel is
			when "000" =>  -- ADD
				result <= A + B; 
			when "001" =>  -- SHR
				result <= '0' & A((width - 1) downto 1); 
			when "010" =>  -- SHL
				result <= A((width - 2) downto 0) & '0'; 
			when "011" =>  -- ZERO
				result <= zero; 
			when "100" =>  -- AND
				result <= A and B; 
			when "101" =>  -- OR
				result <= A or B; 
			when "110" =>  -- PLUS 1
				result <= A + '1'; 
			when others => -- DEFAULT
				result <= A;
		end case;
	end process;
	
	O <= result;
	sum_result <= ('0' & A) + ('0' & B);
	C <= sum_result(width) when (Sel = "000") else '0';
	Z <= '1' when (result = zero) else '0'; 

end Behavioral;

