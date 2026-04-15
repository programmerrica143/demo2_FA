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
    reg  a;
    reg  b;
	 reg	cin;
    wire sum;
	 wire cout;
    
    //insantiate full_adder
    full_adder dut(
		.cout(cout),
		.sum(sum),
		.cin(cin),
		.A(a),
		.B(b)
    );
	 
// apply stimuli
    
    initial begin

    a =0; b =0; cin=0; #10;
    a =0; b =0; cin=1; #10;
    a =0; b =1; cin=0; #10;
    a =0; b =1; cin=1; #10;
	 a =1; b =0; cin=0; #10;
	 a =1; b =0; cin=1; #10;
	 a =1; b =1; cin=0; #10;
	 a =1; b =1; cin=1; #10;
    end 
	 
endmodule