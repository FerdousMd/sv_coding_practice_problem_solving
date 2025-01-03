//generating random values for a given range (the range 34-43) without using the inside operator

class constraint1;
  
  randc int num;
  //rand bit [5:0] num;
  
  constraint c1 //bidirectional constraint
  {num>=34;
   num<=43;}
  
endclass: constraint1
