----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:13 12/15/2021 
-- Design Name: 
-- Module Name:    floating_point_adder - Behavioral 
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
use IEEE.NUMERIC_STD.all;

entity floating_point_adder is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S : out  STD_LOGIC_VECTOR (31 downto 0));
end floating_point_adder;

architecture Behavioral of floating_point_adder is

signal zero : STD_LOGIC_VECTOR ((31) downto 0) := (others => '0');

begin
	
	process(A, B)
		variable sign_A : STD_LOGIC;
		variable sign_B : STD_LOGIC;
		variable exponent_A : STD_LOGIC_VECTOR (7 downto 0);
		variable exponent_B : STD_LOGIC_VECTOR (7 downto 0);
		variable mantissa_A : STD_LOGIC_VECTOR (22 downto 0);
		variable mantissa_B : STD_LOGIC_VECTOR (22 downto 0);
		
		variable exponent_sub : STD_LOGIC_VECTOR (8 downto 0);
		variable exponent_diff : STD_LOGIC_VECTOR (7 downto 0);
		
		variable fixed_A : STD_LOGIC_VECTOR (23 downto 0);
		variable fixed_B : STD_LOGIC_VECTOR (23 downto 0);
		variable fixed_sum : STD_LOGIC_VECTOR (24 downto 0);
		variable fixed_sum_sign : STD_LOGIC;
		variable fixed_sub : STD_LOGIC_VECTOR (24 downto 0);
		
		variable result_sign : STD_LOGIC;
		variable result_exponent : STD_LOGIC_VECTOR (7 downto 0);
		variable result_mantissa : STD_LOGIC_VECTOR (22 downto 0);
	begin
		
		-- Determine each part of numbers A and B
		sign_A := A(31);
		sign_B := B(31);
		exponent_A := A(30 downto 23);
		exponent_B := B(30 downto 23);
		mantissa_A := A(22 downto 0);
		mantissa_B := B(22 downto 0);
		
		-- Check if either A, B or the result is zero, if not run the algorithm
		if (A = zero) then
			S <= B;
		elsif (B = zero) then
			S <= A;
		elsif (((sign_A xor sign_B) = '1') and (A(30 downto 0) = B(30 downto 0))) then
			S <= zero;
		else
			-- Find the difference between exponent A and exponent B
			exponent_sub := ('0' & exponent_A) + not('1' & exponent_B) + '1';
			if (exponent_sub(8) = '1') then -- exponent A > exponent B
				exponent_diff := exponent_sub(7 downto 0);
			else
				exponent_diff := (not exponent_sub(7 downto 0)) + '1';
			end if;

			-- Equalize exponents
			if (exponent_sub(8) = '1') then -- means exponent A >= exponent B, hence SHR B
				fixed_A := '1' & mantissa_A;
				fixed_B := std_logic_vector(shift_right(unsigned('1' & mantissa_B), to_integer(unsigned(exponent_diff))));
				result_exponent := exponent_A;
			else -- means exponent A < exponent B, hence SHR A
				fixed_A := std_logic_vector(shift_right(unsigned('1' & mantissa_A), to_integer(unsigned(exponent_diff))));
				fixed_B := '1' & mantissa_B;
				result_exponent := exponent_B;
			end if;
			
			-- Add or subtract numbers according to their signs
			if ((sign_A xor sign_B) = '0') then -- it means their signs are the same
				fixed_sum := ('0' & fixed_A) + ('0' & fixed_B);
				fixed_sum_sign := sign_A;
			else
				fixed_sub := ('0' & fixed_A) + not('1' & fixed_B) + '1';
				if (fixed_sub(24) = '1') then -- A > B
					fixed_sum := '0' & fixed_sub(23 downto 0);
					fixed_sum_sign := sign_A;
				else
					fixed_sum := '0' & ((not fixed_sub(23 downto 0)) + '1');
					fixed_sum_sign := sign_B;
				end if;
			end if;
			result_sign := fixed_sum_sign;
			
			-- Normalize the result
			if (fixed_sum(24) = '1') then -- the result is in form 11.01...
				result_mantissa := fixed_sum(23 downto 1);
				result_exponent := result_exponent + '1';
			else -- the result is in form 01.01... or 0.0101...
				while (fixed_sum(23) = '0') loop
					fixed_sum := std_logic_vector(shift_left(unsigned(fixed_sum), 1));
					result_exponent := result_exponent - '1';
				end loop;
				result_mantissa := fixed_sum(22 downto 0);
			end if;
			
			S(31) <= result_sign;
			S(30 downto 23) <= result_exponent;
			S(22 downto 0) <= result_mantissa;
		end if;
		
	end process;
	
end Behavioral;

