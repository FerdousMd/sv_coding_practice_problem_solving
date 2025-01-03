class cons;
rand int a[];
  constraint x{a.size==10;}
  constraint y {foreach (a[i])
    			if(i%2==0)
  				if (i==0)
    					a[i]==1; //index => 0
  				else 
    					a[i]==a[i-2]+1; //index => 2, 4, 6, 8
			else
  				a[i]==a[i-1];} //index => 1, 3, 5, 7, 9

function void post_randomize();
	$display("Randomized data is %0p",a);
endfunction

endclass

cons c;

module top;
	initial begin
		c=new();
		assert(c.randomize());
	end
endmodule
