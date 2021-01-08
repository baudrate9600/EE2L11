configuration sqi_behaviour_cfg of sqi is
   for behaviour
      for all: counter16 use configuration work.counter16_behaviour_cfg;
      end for;
      for all: shift_register use configuration work.shift_register_behaviour_cfg;
      end for;
      for all: sqi_controller use configuration work.sqi_controller_behaviour_cfg;
      end for;
   end for;
end sqi_behaviour_cfg;
