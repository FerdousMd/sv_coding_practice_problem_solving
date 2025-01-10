//a clock to be off till 100 ns and start clock after 100ns,write a systemverilog code for it.

module clock();
  
  //parameter FREQ = 100; //clk frequencyin MHz  
  //real clk_period = 1.0/(FREQ * 1e6) * 1e9; //clk period in ns
  
  logic clk;
  
  initial begin
    
    //activ = 1'b0;
    clk = 1'b0;
    #100;
    
    forever begin
      //#(clk_period) clk = ~clk;
      
      #1 clk = ~clk;
      
      //#100 $finish;
    end
    
    //#100 $finish;
  end
  
  initial begin
    #200;
    $finish;
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
  
endmodule: clock
