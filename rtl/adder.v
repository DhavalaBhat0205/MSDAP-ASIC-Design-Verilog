module adder(
	input wire [39:0] a,
    input wire [39:0] b,
    input wire addsub,
	input wire adder_en,
    output wire [39:0] sum
    );

		assign sum = (addsub == 1'b1) ? (b - a) : 
						 (addsub == 1'b0) ? (b + a) :
						 	sum;	

endmodule
