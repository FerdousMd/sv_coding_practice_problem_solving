//Write a constraint such that even locations contains odd numbers and odd locations contains even numbers.

class num_pos;
  
  rand int num_arr[];
  randc int odd;
  randc int even;
  
  constraint c1 {num_arr.size() == 10;}
  
  constraint c2 {odd%2 == 1;}
  
  constraint c3 {even%2 == 0;}
  
  constraint c4 {foreach (num_arr[i])
    if (i%2 == 0) //even position
      if (i == 0)
      	num_arr[i] == odd;
      else
        num_arr[i] == num_arr[i-2]+2;
    else //odd position
      if (i == 1)
        num_arr[i] == even;
      else
        num_arr[i] == num_arr[i-2]+2;}
  
  function void post_randomize();
    
    $display("Generated array is %0p", num_arr);
    
  endfunction: post_randomize
    
endclass: num_pos
