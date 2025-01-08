//randomize a single bit variable for 10 times values generated should  be like 101010101010

class one_bit;
  
  rand bit x;
  
  constraint c {x == 1'b1;}
  
endclass: one_bit

one_bit ob;

module one_bit_rand;
  
  initial begin
    
    ob = new();
    
    repeat (5) begin
      
      if (ob.randomize()) begin
        
        $display("Bit value is %0b", ob.x);
        
        ob.x = ~ob.x;
        
        $display("Bit value is %0b", ob.x);
      end
    end
  end
  
endmodule: one_bit_rand
