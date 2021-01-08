configuration syn_sram_interface_tb_behaviour_cfg of sram_interface_tb is
   for behaviour
      for all: sram_interface use configuration work.sram_interface_synthesised_cfg;
      end for;
   end for;
end syn_sram_interface_tb_behaviour_cfg;
