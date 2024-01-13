module DFF(
    input d,rst,clk,
    output reg q,qbar
);

    always @(posedge clk)
    begin
    if (rst == 1 && d == 1) 
    begin
        q = 0;
        qbar = 1;
    end

    else if (rst == 1 && d == 0)
    begin
        q = 0;
        qbar = 1;
    end

    else if (rst == 0 && d == 0)
    begin
        q = 0;
        qbar = 1;
    end

    else if (rst == 0 && d == 1)
    begin 
        q = 1;
        qbar = 0;
    end
    
    end

endmodule


module tb_DFF();
    reg d,rst,clk;
    wire q,qbar;

    DFF d_flip_flop(d,rst,clk,q,qbar);

    
    initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end 


    initial begin
        d = 1;
        rst = 0;
        #100;

        d = 0;
        rst = 0;
        #100;

        d = 1;
        rst = 0;
        #100;

        d = 0;
        rst = 1;
        #100;

        d = 1;
        rst = 1;
        #100;
     
    end
    
endmodule







