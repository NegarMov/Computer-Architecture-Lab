----------------------------------------------------------------------------------
-- Company: 	    AUT
-- Engineer:		 Negar Movaghatian
-- Student Number: 9831062
-- 
-- Create Date:    14:50:47 10/27/2021 
-- Design Name: 
-- Module Name:    moore_1011 - Behavioral 
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

entity moore_1011 is
    Port ( input : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           output : out  STD_LOGIC);
end moore_1011;

architecture Behavioral of moore_1011 is

-- S0: got nothing
-- S1: got 1
-- S2: got 10
-- S3: got 101
-- S4: got 1011
type state is (S0, S1, S2, S3, S4);
signal present_state : state := S0;
signal next_state : state := S0;

begin

CMB: process(present_state, input)
begin
	case present_state is
		when S0 =>
			if(input = '1') then
				next_state <= S1;
			else
				next_state <= present_state;
			end if;
		when S1 =>
			if(input = '0') then
				next_state <= S2;
			else
				next_state <= present_state;
			end if;
		when S2 =>
			if(input = '1') then
				next_state <= S3;
			else
				next_state <= S0;
			end if;
		when S3 =>
			if(input = '1') then
				next_state <= S4;
			else
				next_state <= S2;
			end if;
		when S4 =>
			if(input = '1') then
				next_state <= S1;
			else
				next_state <= S2;
			end if;
		when others =>
			next_state <= S0;
	end case;
end process;

REG : process(CLK)
begin
	if(CLK'event and CLK = '1') then
		present_state <= next_state;
	end if;
end process;

output <= 
	'1' when present_state = S4 else
	'0';

end Behavioral;

