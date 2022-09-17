----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:00 12/27/2021 
-- Design Name: 
-- Module Name:    basic_computer - Behavioral 
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

entity basic_computer is
    Port ( ROM_addr : in  STD_LOGIC_VECTOR (3 downto 0);
           RAM_addr : in  STD_LOGIC_VECTOR (6 downto 0);
           ALU_sel : in  STD_LOGIC_VECTOR (2 downto 0);
           REG_2_in : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end basic_computer;

architecture Behavioral of basic_computer is

component ROM16x8 is
    Port ( address : in  STD_LOGIC_VECTOR (3 downto 0);
           data : out  STD_LOGIC_VECTOR (7 downto 0));
end component ROM16x8;

component RAM128x8 is
	port(
		clk: in std_logic;
		arst: in std_logic;
		wr: in std_logic;
		rd: in std_logic;
		address: in std_logic_vector(6 downto 0);
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end component RAM128x8;

component ALUx8 is
	 generic ( width : integer := 8; sel_width : integer := 3 );
    Port ( Sel : in  STD_LOGIC_VECTOR ((sel_width - 1) downto 0);
           A : in  STD_LOGIC_VECTOR ((width - 1) downto 0);
           B : in  STD_LOGIC_VECTOR ((width - 1) downto 0);
           O : out  STD_LOGIC_VECTOR ((width - 1) downto 0);
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC);
end component ALUx8;

component REGx8 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end component REGx8;

component pulse_generator is
	Port (CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
         output : out  STD_LOGIC_VECTOR(4 downto 0));
end component pulse_generator;

signal T : STD_LOGIC_VECTOR (4 downto 0);
signal REG_1_in : STD_LOGIC_VECTOR (7 downto 0);
signal REG_res_in : STD_LOGIC_VECTOR (7 downto 0);
signal REG_out_in : STD_LOGIC_VECTOR (7 downto 0);
signal REG_1_out : STD_LOGIC_VECTOR (7 downto 0);
signal REG_2_out : STD_LOGIC_VECTOR (7 downto 0);
signal REG_res_out : STD_LOGIC_VECTOR (7 downto 0);

begin

	p_gen   : pulse_generator port map (CLK => CLK, RST => RST, output => T);
	rom     : ROM16x8 port map (address => ROM_addr, data => REG_1_in);
	reg_1   : REGx8 port map (D => REG_1_in, CLK => CLK, RST => RST, LOAD => T(0), Q => REG_1_out);
	reg_2   : REGx8 port map (D => REG_2_in, CLK => CLK, RST => RST, LOAD => '1', Q => REG_2_out);
	alu     : ALUx8 port map (Sel => ALU_sel, A => REG_1_out, B => REG_2_out, O => REG_res_in);
	reg_res : REGx8 port map (D => REG_res_in, CLK => CLK, RST => RST, LOAD => T(1), Q => REG_res_out);
	ram     : RAM128x8 port map (clk => CLK, arst => RST, wr => T(2), rd => T(3), address => RAM_addr, 
											data_in => REG_res_out, data_out => REG_out_in);
	reg_out : REGx8 port map (D => REG_out_in, CLK => CLK, RST => RST, LOAD => T(4), Q => output);

end Behavioral;

