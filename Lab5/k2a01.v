module labK;
reg a,b; // reg without size means 1 bit
wire tmp,z; 
not my_not(tmp,b); // tmp is an output; b is an input
and my_and(z,a,tmp); // z is output; a, tmp are input
initial 
begin 
	a=1; b=1;
	$display("a=%b b=%b z=%b", a, b, z);
	$finish;
end
endmodule
