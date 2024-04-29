module status_leds
(
    input qsfp0_up, qsfp1_up,

    input chan0_ok, chan1_ok,

    output[3:0] led_green_l, led_orange_l
);

assign led_orange_l = { chan1_ok,  chan0_ok,  qsfp1_up,  qsfp0_up};
assign led_green_l  = {~chan1_ok, ~chan0_ok, ~qsfp1_up, ~qsfp0_up};

endmodule