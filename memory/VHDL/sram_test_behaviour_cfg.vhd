configuration sram_test_behaviour_cfg of sram_test is
   for behaviour
      for all: sram_interface use configuration work.sram_interface_behaviour_cfg;
      end for;
			for all: gen25mhz  use configuration work.gen25mhz_behaviour_cfg; 
			end for; 
   end for;
end sram_test_behaviour_cfg;
