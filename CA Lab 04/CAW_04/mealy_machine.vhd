----------------------------------------------------------------------------------
-- Company: 	    AUT
-- Engineer:		 Negar Movaghatian
-- Student Number: 9831062
-- 
-- Create Date:    16:09:36 10/30/2021 
-- Design Name: 
-- Module Name:    mealy_machine - Behavioral 
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

entity mealy_machine is
    Port ( input : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           output : out  STD_LOGIC);
end mealy_machine;

architecture Behavioral of mealy_machine is

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
				output <= '0';
			else
				next_state <= S2;
				output <= '0';
			end if;
		when S1 =>
			if(input = '0') then
				next_state <= S2;
				output <= '1';
			else
				next_state <= present_state;
				output <= '1';
			end if;
		when S2 =>
			if(input = '1') then
				next_state <= S1;
				output <= '0';
			else
				next_state <= present_state;
				output <= '0';
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

end Behavioral;

