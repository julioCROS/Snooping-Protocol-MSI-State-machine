module CPUrequest(bitMS, invalid, CPU_read_HitMiss, CPU_write_HitMiss, 
                  next_MSI, read_miss,invalidate, 
						write_miss, write_back);

	input bitMS, invalid, CPU_read_HitMiss, CPU_write_HitMiss;
	
	wire[1:0] MSI = {bitMS, invalid};
	
	output reg[1:0] next_MSI;	
	output reg invalidate, read_miss, write_miss, write_back;
	
	always@(*)begin
		invalidate = 0;
		read_miss = 0;
		write_miss = 0;
		write_back = 0;		
		
		case(MSI)
			3'b10: begin  // Modificado
						  if(CPU_read_HitMiss == 0) begin  // Read miss
								write_back = 1;
								read_miss = 1;
								next_MSI = 3'b00;	
								$display("CPU read miss | Write-back block | Place read miss on bus");
						  end
						  
						  if(CPU_read_HitMiss == 1) begin  //Read Hit
								next_MSI = MSI;
								$display("CPU read hit");
						  end	
						  
						  if(CPU_write_HitMiss == 0) begin //Write Miss
								write_back = 1;
								write_miss = 1;	
								next_MSI = MSI;
								$display("CPU write miss | Write-back cache block | Place write miss on bus ");
						  end
						  
						  if(CPU_write_HitMiss == 1) begin  //Write Hit
								next_MSI = MSI;
								$display("CPU write hit");
						  end	
						  
					  end
					  					  
			3'b00: begin // Shared
						  if(CPU_read_HitMiss == 0) begin //Read miss
							  read_miss = 1;
							  next_MSI = MSI;
							  $display("CPU read miss| Place read miss on bus");
						  end
						  
						  if(CPU_read_HitMiss == 1) begin //Read Hit
						     next_MSI = MSI;
							  $display("CPU read hit");
						  end		
						 
						  if(CPU_write_HitMiss == 0) begin //Write Miss 
							  write_miss = 1;
							  next_MSI = 3'b10;
							  $display("CPU write miss | Place write miss on bus");
						  end 
			
						  if(CPU_write_HitMiss == 1) begin //Write Hit
							  invalidate = 1;
							  next_MSI = 3'b10;
							  $display("CPU write hit | Place invalidate on bus");
						  end
						  						    
					  end
					  
			3'b01: begin // Invalido
						  if(CPU_read_HitMiss == 1 || CPU_write_HitMiss == 1) begin
						     write_miss = 0;
						     read_miss = 0;
						  end
			
						  if(CPU_read_HitMiss == 0) begin //Read Miss
							  read_miss = 1;
							  next_MSI = 3'b00;
							  $display("CPU read| Place read miss on bus");
						  end
						  
						  if(CPU_write_HitMiss == 0) begin //Write Miss
							  write_miss = 1;
							  next_MSI = 3'b10;
							  $display("CPU write | Place write miss on bus");
						  end
						  
					  end
		endcase	
	end	
endmodule


module BUSrequest(bitMS, invalid, read_miss, write_miss, invalidate,
						next_MSI, write_back, abort_mem_access);
						
	input bitMS, invalid, read_miss, write_miss, invalidate;
	wire[1:0] MSI = {bitMS, invalid}; 
	
	
	output reg[1:0] next_MSI;	
	output reg write_back, abort_mem_access;
	
	always@(*)begin
		write_back = 0;
		abort_mem_access = 0;
		case(MSI)
			3'b10: begin // Modificado
						  if(read_miss == 1) begin
							  next_MSI = 00;
							  write_back = 1;
							  abort_mem_access = 1;
							  $display("Write-back block; abort memory acess");
						  end
						  
						  if(write_miss == 1) begin
							  next_MSI = 01;
							  write_back = 1;
							  abort_mem_access = 1;
							  $display("Write-back block; abort memory acess");
						  end
						  
					  end
					  
			3'b00: begin // Shared
						  if(invalidate == 1) begin
							next_MSI = 01;
							$display("Invalidate for this block");
						  end
						  
						  if(write_miss == 1) begin
							next_MSI = 01;
							$display("Write miss for this block");
						  end
						  
						  if(read_miss == 1) begin
							next_MSI = MSI;
							$display("CPU read miss");
						  end
					  end
		endcase
		
	end
endmodule