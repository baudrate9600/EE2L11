configuration line_buffer_tb_behaviour_cfg of line_buffer_tb is
   for behaviour
      for all: line_buffer use configuration work.line_buffer_behaviour_cfg;
      end for;
   end for;
end line_buffer_tb_behaviour_cfg;
