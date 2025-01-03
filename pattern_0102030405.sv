//Write a constraint to generate the pattern 0102030405

class num_pattern;
  
  rand int num[]; //dynamic array
  
  constraint c1 {num.size() == 10;}
  constraint c2 {foreach (num[i])
    			   if (i%2 == 0) //even index
                     num[i] == 0; //@ index 0, 2, 4, 6, 8
                   else //odd index
                     if (i == 1)
                       num[i]==1; //@ index 1
                     else
                       num[i]==num[i-2]+1;} //@ index 3,5,7,9
  
  function void post_randomize();
    
    $display("The generated pattern is : %0p", num);
    
  endfunction: post_randomize
  
endclass: num_pattern


module pattern;
  
  num_pattern np;
  
  initial begin
    
    np = new();
    
    assert(np.randomize());
    
  end
  
  
endmodule: pattern

/*For solving this type of problems where one's asked to generate a certain
pattern consisting of certain numbers consider that pattern as an array of
numbers. At first declare a random dynamic array of numbers.

*/
