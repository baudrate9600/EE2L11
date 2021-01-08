configuration sram_test_tb_behaviour_cfg of sram_test_tb is
   for behaviour
      for all: sram_test use configuration work.sram_test_behaviour_cfg;
      end for;
   end for;
end sram_test_tb_behaviour_cfg;
