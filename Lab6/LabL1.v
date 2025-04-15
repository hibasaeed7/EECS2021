module LabL1;


 reg a,b,c;
 wire z;
 integer i, j, k;

 yMux1 M(z,a,b,c);

  // Exhaustive testing using nested loops

  initial begin
    
    // Test all combinations of a, b, c 
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          // Assign values to a, b, c
          a = i;
          b = j;
          c = k;
          #10
          // Display the input values and corresponding output
          $display("a = %b, b = %b, c = %b -> z = %b", a, b, c, z);
        end
      end
    end

    // End of simulation
    $finish;
  end

endmodule


