`include "Full_Adder.v"
`include "Half_Adder.v"

module b16_adder(byte_out, carry_out, byte_A, byte_B);

    output [15:0] byte_out;
    output carry_out;
    input [15:0] byte_A;
    input [15:0] byte_B;
    wire [14:0] bit_carry;

    half_adder bit0(byte_out[0], bit_carry[0], byte_A[0], byte_B[0]);
    full_adder bit1(byte_out[1], bit_carry[1], byte_A[1], byte_B[1], bit_carry[0]);
    full_adder bit2(byte_out[2], bit_carry[2], byte_A[2], byte_B[2], bit_carry[1]);
    full_adder bit3(byte_out[3], bit_carry[3], byte_A[3], byte_B[3], bit_carry[2]);
    full_adder bit4(byte_out[4], bit_carry[4], byte_A[4], byte_B[4], bit_carry[3]);
    full_adder bit5(byte_out[5], bit_carry[5], byte_A[5], byte_B[5], bit_carry[4]);
    full_adder bit6(byte_out[6], bit_carry[6], byte_A[6], byte_B[6], bit_carry[5]);
    full_adder bit7(byte_out[7], bit_carry[7], byte_A[7], byte_B[7], bit_carry[6]);
    full_adder bit8(byte_out[8], bit_carry[8], byte_A[8], byte_B[8], bit_carry[7]);
    full_adder bit9(byte_out[9], bit_carry[9], byte_A[9], byte_B[9], bit_carry[8]);
    full_adder bit10(byte_out[10], bit_carry[10], byte_A[10], byte_B[10], bit_carry[9]);
    full_adder bit11(byte_out[11], bit_carry[11], byte_A[11], byte_B[11], bit_carry[10]);
    full_adder bit12(byte_out[12], bit_carry[12], byte_A[12], byte_B[12], bit_carry[11]);
    full_adder bit13(byte_out[13], bit_carry[13], byte_A[13], byte_B[13], bit_carry[12]);
    full_adder bit14(byte_out[14], bit_carry[14], byte_A[14], byte_B[14], bit_carry[13]);
    full_adder bit15(byte_out[15], carry_out, byte_A[15], byte_B[15], bit_carry[14]);

endmodule
