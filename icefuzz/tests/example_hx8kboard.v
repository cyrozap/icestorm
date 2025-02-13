module top (
	input  clk,
	output LED0,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5,
	output LED6,
	output LED7
);

	localparam BITS = 8;
	localparam LOG2DELAY = 22;

	function [BITS-1:0] bin2gray(input [BITS-1:0] in);
		integer i;
		reg [BITS:0] temp;
		begin
			temp = in;
			for (i=0; i<BITS; i=i+1)
				bin2gray[i] = ^temp[i +: 2];
		end
	endfunction

	reg [BITS+LOG2DELAY-1:0] counter = 0;

	always@(posedge clk)
		counter <= counter + 1;
	
	assign {LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7} = bin2gray(counter >> LOG2DELAY);
endmodule
