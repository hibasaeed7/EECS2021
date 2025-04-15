module testbench;
	reg clk, reset;
	reg [31:0] instruction;
	initial begin
	$display("Time",$time,", Instruction: ", instruction);
	#10 instruction=10;
	$display("Time: %5d Instruction: %d %16h %25b",$time, instruction, instruction, instruction);
	#10 instruction=20;
	$display("Time: %5d Instruction: %d %16h %25b",$time, instruction, instruction, instruction);
	#10 instruction=30;
	$display("Time: %5d Instruction: %d %16h %25b",$time, instruction, instruction, instruction);
	$finish;
	end
endmodule
