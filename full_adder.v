/*================================================
						FULL ADDER
==================================================

Description:
	This is a full_adder using gate level modeling.

Design Engineer:
    Galagate, Rica G.

Date:
    16 April 2026
------------------------------------------------*/
module full_adder(sum,cout,cin,A,B);
    // ports
    input  A;
    input  B;
	 input  cin;
    output sum;
	 output cout;

    // full adder
	 assign  sum = (A ^ B) ^ cin;
	 assign cout = ((A ^ B) & cin) + (A & B);
	 
endmodule
