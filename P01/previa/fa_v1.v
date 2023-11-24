module fa_v1(output wire sum2, cout, input wire a, b, cin);

  wire s1, c1, c2;

  ha_v2 ha1(s1, c1, a, b);
  ha_v2 ha2(sum2, c2, cin, s1);
  or or1 (cout, c1, c2);

endmodule 
