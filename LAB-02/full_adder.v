module full_adder
(
    // Port declaration
        // Inputs
        input a,
        input b,
        input cin,
        // Outputs
        output s,
        output cout
);

    // Declaration of intermediate wires
        wire w1, w2, w3 ;

    // Circuit operation - structural approach
    xor u0 (w1, a, b);
    xor u1 (s, w1, cin);
    and u2 (w2, cin, w1);
    and u3 (w3, a, b);
    or u4 (cout, w2, w3);
endmodule