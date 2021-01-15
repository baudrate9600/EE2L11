configuration address_alu_tb_behaviour_cfg of address_alu_tb is
   for behaviour
      for all: address_alu use configuration work.address_alu_behaviour_cfg;
      end for;
   end for;
end address_alu_tb_behaviour_cfg;
