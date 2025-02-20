module twos_compliment(

    input [7:0] A,
    output [7:0] TC
    
    );
    
    wire [7:0] A_invert; 
    
    assign A_invert = ~A; 
    
    full_adder add0 (A_invert[0], 1'b1, 1'b0, TC[0], c1); 
    full_adder add1 (A_invert[1], 1'b0, c1, TC[1], c2); 
    full_adder add2 (A_invert[2], 1'b0, c2, TC[2], c3); 
    full_adder add3 (A_invert[3], 1'b0, c3, TC[3], c4); 
    full_adder add4 (A_invert[4], 1'b0, c4, TC[4], c5); 
    full_adder add5 (A_invert[5], 1'b0, c5, TC[5], c6); 
    full_adder add6 (A_invert[6], 1'b0, c6, TC[6], c7); 
    full_adder add7 (A_invert[7], 1'b0, c7, TC[7], c8);
    
endmodule