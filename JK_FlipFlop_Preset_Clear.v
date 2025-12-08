module JK_FlipFlop_Preset_Clear (
    input J,
    input K,
    input clk,
    input preset,
    input clear,
    output reg Q,
    output Qbar
);

    
    not(Qbar, Q);

    always @(posedge clk or negedge preset or negedge clear) begin
        if (!clear) begin 
            Q <= 1'b0;
        end else if (!preset) begin 
            Q <= 1'b1;
        end else begin 
            case ({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= ~Q;     
            endcase
        end
    end

endmodule