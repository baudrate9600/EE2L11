configuration sram_interface_behaviour_cfg of sram_interface is
   for behaviour
      for all: sqi use configuration work.sqi_behaviour_cfg;
      end for;
      for all: tri_buffer use configuration work.tri_buffer_behaviour_cfg;
      end for;
   end for;
end sram_interface_behaviour_cfg;
