module LabL2;

  reg [1:0] a, b;
  reg c;
  integer i,j,k;
  wire [1:0]z;

 
 yMux2 M(z,a,b,c);


  initial begin
    // Test all combinations of a, b, c 
    for (i = 0; i < 4; i = i + 1) begin
      for (j = 0; j < 4; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          // Assign values to a, b, c
          a = i;
          b = j;
          c = k;
          #1
          // Display the input values and corresponding output
          $display("a = %b, b = %b, c = %b -> z = %b", a, b, c, z);
        end
      end
    end

    // End of simulation
    $finish;
  end

endmodule


