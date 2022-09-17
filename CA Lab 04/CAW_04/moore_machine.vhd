----------------------------------------------------------------------------------
-- Company: 	    AUT
-- Engineer:		 Negar Movaghatian
-- Student Number: 9831062 
-- 
-- Create Date:    14:15:17 10/27/2021 
-- Design Name: 
-- Module Name:    moore_machine - Behavioral 
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

entity moore_machine is
    Port ( input : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  output : out  STD_LOGIC_VECTOR (1 downto 0));
end moore_machine;

architecture Behavioral of moore_machine is

type state is (S0, S1, S2);
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
				next_state <= S0;
			else
				next_state <= present_state;
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
	"00" when present_state = S0 else
	"10" when present_state = S1 else
	"11" when present_state = S2 else
	"00";

end Behavioral;

