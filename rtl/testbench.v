`timescale 1ns / 1ps

module testbench;
	// Inputs
	reg clk, reset;
	// Outputs
	wire LED;
	// Instantiate the Unit Under Test (UUT)
	PWM uut (.clk(clk), .LED(LED), .reset(reset));
	// Initialize Inputs
	initial 
		begin
		clk = 1'd0;
		reset = 1'd1;
		#1;
		reset = 1'd0;
		end
    initial 
		forever #0.001 clk = ~clk;

//Uncomment the following code if you need console output
//Warning! May reduce ISim simulation speed

//	always @ (posedge clk)
	//$display ("clk=%d, pwm_inp=%d, pwm_cnt=%d, LED=%d", clk, uut.pwm_inp, uut.pwm_cnt, LED);
	
endmodule

