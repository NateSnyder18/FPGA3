module adder_tb();
    reg [1:0] A, B;
    reg CI;
    wire a, b, c, d, e, f, g;

    adder uut(A, B, CI, a, b, c, d, e, f, g);

    initial begin
   
        A = 2'd0; B=2'd0; CI=0; #10;
        A = 2'd0; B=2'd0; CI=1; #10;
        A = 2'd0; B=2'd1; CI=0; #10;
        A = 2'd0; B=2'd1; CI=1; #10;
        A = 2'd1; B=2'd0; CI=0; #10;
        A = 2'd1; B=2'd0; CI=1; #10;
        A = 2'd1; B=2'd1; CI=0; #10;
        A = 2'd1; B=2'd1; CI=1; #10;
        A = 2'd0; B=2'd2; CI=0; #10;
        A = 2'd0; B=2'd2; CI=1; #10;
        A = 2'd2; B=2'd0; CI=0; #10;
        A = 2'd2; B=2'd1; CI=1; #10;
   
    end
   
endmodule
