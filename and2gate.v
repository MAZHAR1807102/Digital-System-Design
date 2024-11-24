`timescale 1ns/1ps

module and2gate(A, B, F);
	input A, B;
	output F;
	reg F;


	always@(A or B)
	begin
		F <= A & B;
	end
endmodule
