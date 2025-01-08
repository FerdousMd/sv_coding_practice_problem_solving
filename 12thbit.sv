//write a constraint to randomize variable with size of 32 bit data, but randomize only 12th bit.

class single_bit;
  
  bit [10:0] x = 11'd0;
  rand bit y; //12 bit from LSB direction
  bit [19:0] z = 20'd0;
  
  bit [31:0] data;
  
  function void post_randomize();
    
    data = {z,y,x};
    
    $display("After successful randomization of the 12th LSB the data is %0b", data);
    
  endfunction: post_randomize
  
endclass: single_bit

single_bit sb;


module bit12th;
  
  initial begin
    sb = new();
    
    repeat(8) begin
    	if (sb.randomize()) $display("Successful randomization");
    end
  end
  
endmodule: bit12th
