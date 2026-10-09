module top (
    input [7:0] sw,
    output [5:0] led
);

    light stair_light(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .light(led[0])
    );
    
    adder a(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .C(led[2])
    );
    
    wire carryover;
    
    full_adder LSB(
        .A(sw[4]),
        .B(sw[6]),
        .C(1'b0),
        .Cout(carryover),
        .Y(led[3])
    );
    
    full_adder MSB(
        .A(sw[5]),
        .B(sw[7]),
        .C(carryover),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule