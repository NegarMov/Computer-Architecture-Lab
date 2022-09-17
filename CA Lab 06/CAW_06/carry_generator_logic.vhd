----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:50 11/10/2021 
-- Design Name: 
-- Module Name:    carry_generator_logic - Behavioral 
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

entity carry_generator_logic is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end carry_generator_logic;

architecture Behavioral of carry_generator_logic is

signal P : STD_LOGIC_VECTOR (3 downto 0);
signal G : STD_LOGIC_VECTOR (3 downto 0);

begin

	P <= A or B;
	G <= A and B;
	
	C(0) <= G(0) or (cin and P(0));
	C(1) <= G(1) or (G(0) and P(1)) or (cin and P(0) and P(1));
	C(2) <= G(2) or (G(1) and P(2)) or (G(0) and P(1) and P(2)) or (cin and P(0) and P(1) and P(2));
	C(3) <= G(3) or (G(2) and P(3)) or (G(1) and P(2) and P(3)) or (G(0) and P(1) and P(2) and P(3)) or (cin and P(0) and P(1) and P(2) and P(3));

end Behavioral;

