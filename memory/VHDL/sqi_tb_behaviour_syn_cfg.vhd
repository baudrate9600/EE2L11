configuration sqi_tb_behaviour_syn_cfg of sqi_tb is
   for behaviour
      for all: sqi use configuration work.sqi_synthesised_cfg;
      end for;
   end for;
end sqi_tb_behaviour_syn_cfg;
