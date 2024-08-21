module half_adder(S_out, C_out, A_in, B_in);

    output S_out, C_out;
    input A_in, B_in;
    
    xor xor1(S_out, A_in, B_in);
    and and1(C_out, A_in, B_in);
    
endmodule