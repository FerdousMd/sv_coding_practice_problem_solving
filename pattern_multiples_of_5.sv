//write a constraint to generate below pattern 5 -10 15 -20 25 -30

class pattern_5;
  
  rand int arr[];
  
  constraint c1 {arr.size() == 6;}
  
  constraint c2 {foreach (arr[i])
    			   if (i%2 == 1) //odd index
                     arr[i] == (i+1) * (-5); //@ index 1 3 5 7 9
  				   else //even index
                     arr[i] == (i+1) * 5;} //@ index 0 2 4 6 8
  
  function void post_randomize();
    
    $display("Required pattern is %0p", arr);
    
  endfunction: post_randomize 
  
endclass: pattern_5



pattern_5 p5;

module pattern;
  
  initial begin
    
    p5 = new();
    
    assert(p5.randomize());
    
  end
  
  
endmodule: pattern
