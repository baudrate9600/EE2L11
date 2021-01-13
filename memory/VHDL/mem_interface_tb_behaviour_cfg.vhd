configuration mem_interface_tb_behaviour_cfg of mem_interface_tb is
   for behaviour
      for all: mem_interface use configuration work.mem_interface_behaviour_cfg;
      end for;
   end for;
end mem_interface_tb_behaviour_cfg;
