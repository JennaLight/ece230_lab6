module light(
    input downstairs,
    input upstairs,
    output light
);

    assign light = downstairs ^ upstairs;

endmodule