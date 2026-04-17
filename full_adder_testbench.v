/*================================================
						FULL ADDER
==================================================

Description:
	This is a full_adder using gate level modeling.

Design Engineer:
    Galagate, Rica G.

Date:
    15 April 2026
------------------------------------------------*/
module full_adder_testbench;
    // tb signals
    reg  A;
    reg  B;
	 reg	cin;
    wire sum;
	 wire cout;
    
    //insantiate full_adder
    full_adder dut(
		.cout(cout),
		.sum(sum),
		.cin(cin),
		.A(A),
		.B(B)
    );
	 
// apply stimuli
    
    initial begin

    A =0; B =0; cin=0; #10;
    A =0; B =0; cin=1; #10;
    A =0; B =1; cin=0; #10;
    A =0; B =1; cin=1; #10;
	 A =1; B =0; cin=0; #10;
	 A =1; B =0; cin=1; #10;
	 A =1; B =1; cin=0; #10;
	 A =1; B =1; cin=1; #10;
    end 
	 
endmodule