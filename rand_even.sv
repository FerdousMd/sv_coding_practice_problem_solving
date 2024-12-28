//Write a constraint to generate a random even number between 50 and 100

class rand_even;
  
  randc int even; //cyclic random variable
  
  //rand int even;
  
  constraint c1 {even%2 == 0;}
  
  constraint c2 {even inside {[50:100]};}
  
  function void post_randomize();
    
    $display(even);
    
  endfunction: post_randomize
  
endclass: rand_even


rand_even re;


module even;
  
  initial begin
    
    re = new();
    repeat (10) assert(re.randomize());
    
  end
  
endmodule: even
