`timescale 1ns/1ps


program tb (ifc.bench ds);
	task do_cycle;

		t.key = 128'h20f04193bd83c6bc82ad5b2b65140618; 
		
        
        ds.cb.mode      <= 1;
		ds.cb.rst		<= 	1;	
		ds.cb.ld		<= 	1;
		ds.cb.key[31:0] 	<= 	t.key[31:0];
		ds.cb.key[63:32]	<= 	t.key[63:32]; 		
		ds.cb.key[95:64 ]	<= 	t.key[95:64]; 		
		ds.cb.key[127:96]	<= 	t.key[127:96]; 			
		
        ds.cb.text_in[31:0] 	<= 	t.key[31:0];
		ds.cb.text_in[63:32]	<= 	t.key[63:32];
		ds.cb.text_in[95:64 ]	<= 	t.key[95:64]; 		
		ds.cb.text_in[127:96]	<= 	t.key[127:96];	

		
		$fdisplay (f,"------------- Simulation Time ----------------- %t", $realtime );


	@(ds.cb);

	endtask


	initial begin
		repeat(100) begin
			do_cycle();
		end
	end


endprogram


