module full_adder(S_out, C_out, A_in, B_in, C_in);

    output S_out, C_out;
    input A_in, B_in, C_in;
    
    wire A_and_B_out, A_xor_B_out, AxorB_and_C_in_out;

    xor xor0(A_xor_B_out, A_in, B_in);
    xor xor1(S_out, A_xor_B_out, C_in);
    and and0(A_and_B_out, A_in, B_in);
    and and1(AxorB_and_C_in_out, A_xor_B_out, C_in);
    or or0(C_out, AxorB_and_C_in_out, A_and_B_out);

endmodule