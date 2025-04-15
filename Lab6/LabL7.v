module Lab7;
reg signed [31:0]a,b, expect, hi;
reg c;
wire [31:0]z;
wire cout;
yAdder test(z, cout, a, b, c);

initial
repeat(10)
begin
	
	a = $random;
	b = $random;
	c = $random;
	#2 expect = a+b+c;
	hi = 0;
	#1;
	if(expect === z)
		hi = 1;
	if(hi === 1)
		$display("PASS a=%b b=%b c=%b cout=%b z=%b",a, b, c, cout, z);
	else 
		$display("FAIL: a=%b b=%b c=%b cout=%b z=%b", a, b, c, cout, z);
end
endmodule
