configuration memory_tb_routed_behaviour_cfg of memory_tb is
   for behaviour
      for all: memory use configuration work.memory_routed_cfg;
      end for;
   end for;
end memory_tb_routed_behaviour_cfg;
