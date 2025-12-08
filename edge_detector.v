module edge_detector (
    input clk,
    input reset,  
    input signal_in,
    output pulse_out
);
    reg sig_d;
    always @(posedge clk or posedge reset) begin
        if (reset)
            sig_d <= 0;
        else
            sig_d <= signal_in;
    end
    assign pulse_out = signal_in & ~sig_d;
endmodule