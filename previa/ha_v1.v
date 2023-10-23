//Semisumador de dos entradas de 1 bit realizado a partir de puertas, Notación vieja
module ha_v1(sum, carry, a, b);

output wire sum, carry;
input a, b; //tipo wire por defecto
//Declaración de conexiones o variables internas: no hay ninguna
//Estructura interna: Instancias de puertas y sus conexiones

xor xor1(sum, a, b);
and and1(carry, a, b);
endmodule 