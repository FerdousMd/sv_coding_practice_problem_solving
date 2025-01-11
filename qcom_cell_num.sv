//Write SV constraint to generate 100 random phone numbers with 10 digits where first 3 digits in each should be '852'
//asked at qualcomm
//10 digit cellphone number format
// 9th 8th 7th - 6th 5th 4th 3rd 2nd 1st 0th
//  8   5   2  -  X   X   X   X   X   X   X 

class cell_number;
  
  rand int digit_0, digit_1, digit_2, digit_3, digit_4, digit_5, digit_6, digit_7, digit_8, digit_9;
  
  constraint c9 {digit_9 == 8;
  		 digit_8 == 5;
  		 digit_7 == 2;
  		 digit_6 inside {[0:9]};
  		 digit_5 inside {[0:9]};
  		 digit_4 inside {[0:9]};
  		 digit_3 inside {[0:9]};
  		 digit_2 inside {[0:9]};
  		 digit_1 inside {[0:9]};
  		 digit_0 inside {[0:9]};}
  
  function void post_randomize();
    
    $display("The randomly generated cellphone number is %0d%0d%0d-%0d%0d%0d%0d%0d%0d%0d", digit_9, digit_8, digit_7, digit_6, digit_5, digit_4, digit_3, digit_2, digit_1, digit_0);
    
  endfunction: post_randomize
    
endclass: cell_number

cell_number cn;

module qcom_cell_number;
  
  initial begin
    
    cn = new();
    
    repeat (100) begin
    	assert(cn.randomize());
    end
    
    $display("Random generation of 100 10-digit cellphone number is done, where the first 3 digit in each number is 8, 5 & 2");    
  end    
endmodule: qcom_cell_number
