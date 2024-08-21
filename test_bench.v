`include "16_Bit_Adder.v"

module b16_adder_tb();

    reg [15:0] A;
    reg [15:0] B;
    wire [15:0] S;
    wire C;
    b16_adder b16_adder_0(S, C, A, B);
    
    initial begin
        $dumpfile("test_bench.vcd");
        $dumpvars(0,b16_adder_0);

        A = 'h0000;
        B = 'h0000;
        #1
        A = 'h0003;
        B = 'h0004;
        #1
        A = 'h0300;
        B = 'h0400;
        #1
        A = 'h0003;
        B = 'hFFFF;

    end


endmodule