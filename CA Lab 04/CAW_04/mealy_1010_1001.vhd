----------------------------------------------------------------------------------
-- Company: 	    AUT
-- Engineer:		 Negar Movaghatian
-- Student Number: 9831062
-- 
-- Create Date:    15:26:36 10/27/2021 
-- Design Name: 
-- Module Name:    mealy_1010_1001 - Behavioral 
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

entity mealy_1010_1001 is
    Port ( input : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           output : out  STD_LOGIC);
end mealy_1010_1001;

architecture Behavioral of mealy_1010_1001 is

-- S0: got nothing
-- S1: got 1
-- S2: got 10
-- S3: got 101
-- S4: got 100
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
				output <= '0';
			else
				next_state <= present_state;
				output <= '0';
			end if;
		when S1 =>
			if(input = '0') then
				next_state <= S2;
				output <= '0';
			else
				next_state <= present_state;
				output <= '0';
			end if;
		when S2 =>
			if(input = '1') then
				next_state <= S3;
				output <= '0';
			else
				next_state <= S4;
				output <= '0';
			end if;
		when S3 =>
			if(input = '0') then
				next_state <= S2;
				output <= '1';
			else
				next_state <= S1;
				output <= '0';
			end if;
		when S4 =>
			if(input = '1') then
				next_state <= S1;
				output <= '1';
			else
				next_state <= S0;
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

