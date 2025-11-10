module combinational(S,P,V,LED); 
    // combinational circuit ti implement, an led should turn on if sun is set and a person moves in front of it with a vehicle.

    input S,P,V;
    output LED;

    // assign LED = (~S) & P & V;
    assign LED = (~(S & P)) & V & (~(S | P));

endmodule