module labM;
    reg [31:0] PCin;  // Program Counter input
    reg clk = 0;      // Initialize clk to 0
    wire [31:0] ins, PCp4;  // Instruction and next Program Counter value

    // Instantiate the yIF module (Instruction Fetch)
    yIF my_IF(ins, PCp4, PCin, clk); 

    initial begin

        PCin = 16'h28;  // Initialize PC to 0x28

        repeat (11) begin
      
            clk = 1; 
            #1;  // Wait for one time unit for the clock to settle

            //Execute the instruction (falling edge of clock)
            clk = 0; 
            #1;  

            //View the results 
            $display("Fetched instruction = %h at PC = %h", ins, PCin);

            //--------------------------------- Prepare for the next instruction
            PCin = PCp4;  // Update PC to the next instruction address
        end

        //End 
        $finish;
    end
endmodule
