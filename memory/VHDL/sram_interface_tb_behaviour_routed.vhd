configuration sram_interface_tb_behaviour_routed of sram_interface_tb is
   for behaviour
      for all: sram_interface use configuration work.sram_interface_routed_cfg;
      end for;
   end for;
end sram_interface_tb_behaviour_routed;
