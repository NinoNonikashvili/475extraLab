`timescale 1ns / 1ps
module perfOp(
   
     input clk, 
    input [31:0] A_in,
    input [31:0] B_in,
    input [31:0] C_in,
    output [35:0] Q
    );
	 reg [35:0] R, R1;
     reg [31:0] A, B, C, C1;
	  reg[2:0] n=0;
     always @(posedge clk)
     begin
         A<= A_in; 
         B<= B_in;
         C1<= C_in;
			C<=C1;
    
     R <= (A+B)*4;
	  R1<=R+C;   
	  
     end
     
      assign Q =R1;
     
endmodule
       