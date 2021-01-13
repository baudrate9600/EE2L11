configuration mem_interface_behaviour_cfg of mem_interface is
   for behaviour
      for all: sqi use configuration work.sqi_behaviour_cfg;
      end for;
      for all: memory use configuration work.memory_behaviour_cfg;
      end for;
   end for;
end mem_interface_behaviour_cfg;
