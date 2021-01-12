library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of mem_interface is

component memory is
   port(clk          : in  std_logic;
   	reset	     : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        x            : in  std_logic_vector(4 downto 0);
        y            : in  std_logic_vector(7 downto 0);
        rw           : in  std_logic;
        ce           : in  std_logic;
        mode  	     : in  std_logic;
	edit	     : in  std_logic;
	grid	     : in  std_logic;
        calc_buf_in  : in  std_logic_vector(5 downto 0);
	edit_buf_in  : in  std_logic_vector(7 downto 0);
        calc_buf_out : out std_logic_vector(23 downto 0);
	framebuffer_buf : out std_logic_vector(157 downto 0);
	sqi_address  : out std_logic_vector(14 downto 0);
        ready        : out std_logic;

   	-- TEMPORARY FOR TESTING
   	sqi_finished : in std_logic;
   	sqi_data_in  : in std_logic_vector(7 downto 0);
	sqi_data_out : out std_logic_vector(7 downto 0);
	sqi_enabled  : out std_logic);
end component;

component sqi is
	port (
		reset    : in std_logic;
		clk      : in std_logic;
		en       : in std_logic;

		high_z   : out std_logic;
		single   : in std_logic;
		new_data : out std_logic;
		rw       : in std_logic;
		address  : in std_logic_vector (14 downto 0);
		data_in  : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		sck      : out std_logic;
		mosi     : out std_logic_vector(3 downto 0);
		miso     : in std_logic_vector(3 downto 0);
		cs       : out std_logic;

		done     : out std_logic
	);

end component;


--joining signals 
		
signal i_signal, i_done, i_new_data: std_logic;
signal i_data_in, i_data_out : std_logic_vector(7 downto 0); 
signal i_address : std_logic_vector(14 downto 0);  
signal done_or_new_signal : std_logic;  
begin 
	done_or_new_signal <= i_new_data or i_done;
	u0: sqi port map (reset => reset , 
										clk => clk, 
										en =>sqi_enable, 
										high_z => high_z, 
										single => i_signal, 
										new_data => i_new_data, 
										rw => i_rw,
										address => i_address, 
										data_in => i_data_in, 
										data_out => i_data_out, 
										sck => sck, 
										mosi => mosi, 
										miso => miso, 
										cs => cs,
										done => i_done); 
	u1: memory port map(clk => clk, 
											reset => reset, 
											data_in => data_in,
										  x => x,
											y => y,
											rw => rw,
											ce => ce,
											mode => mode,
											edit => edit,
											grid => grid,
											calc_buf_in => calc_buf_in, 
											edit_buf_in=> edit_buf_in,
											calc_buf_out => calc_buf_out,
											framebuffer_buf => framebuffer_buf,
											sqi_address => i_address,
											ready => ready ,
											single => i_single,
											sqi_rw => i_rw,
											sqi_finished => done_or_new_signal,
											sqi_data_in => i_data_in,
											sqi_data_out => i_data_out); 	


end behaviour;

