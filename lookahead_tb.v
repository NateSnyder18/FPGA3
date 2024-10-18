module lookahead_tb();
    reg [1:0] A, B;
   
    wire [6:0] seg;

    lookahead uut(A, B, seg);

    initial begin
   
        A = 2'd0; B=2'd0; #10;
       
        A = 2'd0; B=2'd1; #10;
     
        A = 2'd1; B=2'd0; #10;
       
        A = 2'd1; B=2'd1; #10;
       
        A = 2'd0; B=2'd2; #10;
       
        A = 2'd1; B=2'd2; #10;
       
        A = 2'd2; B=2'd2; #10;
       
        A = 2'd2; B=2'd0; #10;
       
        A = 2'd2; B=2'd1; #10;

       
   
    end
endmodule
