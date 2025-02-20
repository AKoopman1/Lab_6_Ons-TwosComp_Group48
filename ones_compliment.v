module ones_compliment(

    input [3:0] A, 
    input [3:0] B,
    output [3:0] sum

    );
    
    wire [3:0] temp_sum;
    wire [3:0] first_carry;
    wire [3:0] last_carry;
   
    
     full_adder add0(
        .A(A[0]),
        .B(~B[0]),       
        .Cin(0),         
        .Y(temp_sum[0]),
        .Cout(first_carry[0])
    );

    full_adder add1(
        .A(A[1]),
        .B(~B[1]),       
        .Cin(first_carry[0]),
        .Y(temp_sum[1]),
        .Cout(first_carry[1])
    );

    full_adder add2(
        .A(A[2]),
        .B(~B[2]),       
        .Cin(first_carry[1]),
        .Y(temp_sum[2]),
        .Cout(first_carry[2])
    );

    full_adder add3(
        .A(A[3]),
        .B(~B[3]),       
        .Cin(first_carry[2]),
        .Y(temp_sum[3]),
        .Cout(first_carry[3])
    );

    
    
    
    
    
    
    
  
    
    
   full_adder add00(
        .A(temp_sum[0]),
        .B(first_carry[3]),
        .Cin(0),        
        .Y(sum[0]),      
        .Cout(last_carry[0])
    );

    full_adder add11(
        .A(temp_sum[1]),
        .B(last_carry[0]),
        .Cin(0),
        .Y(sum[1]),
        .Cout(last_carry[1])
    );

    full_adder add22(
        .A(temp_sum[2]),
        .B(last_carry[1]),
        .Cin(0),
        .Y(sum[2]),
        .Cout(last_carry[2])
    );

    full_adder add33(
        .A(temp_sum[3]),
        .B(last_carry[2]),
        .Cin(0),
        .Y(sum[3]),
        .Cout(last_carry[3])
    );
    
endmodule