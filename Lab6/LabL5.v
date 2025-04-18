module Lab5;


reg a, b, cin;
wire z, cout;
integer i, j, k;
reg[1: 0] expect;

yAdder1 adder(z, cout, a, b, cin);

initial 
begin
    for(i = 0; i < 2; i = i + 1)
        begin
            for(j = 0; j < 2; j = j + 1)
                begin
                    for(k = 0; k < 2; k = k + 1)
                        begin
                            a = i; b = j; cin = k;
                            expect = a + b + cin;
                            #1;
                            if(expect[1] != cout)
                            $display(" a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);
                            if(expect[0] != cout)
                             $display(" a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);
                            
                        end
                end
        end
$finish;
end
endmodule
