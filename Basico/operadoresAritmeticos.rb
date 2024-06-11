n1 = 10;
n2 = 25;


puts n1+n2;
puts n1-n2;
puts n1*n2;
puts n1/n2;
puts n1%n2;
resultado = n1+n2;
nuevoNumeroString = n1.to_s;

puts nuevoNumeroString;

puts "El resultado de " + n1.to_s + "+" + n2.to_s + " es " + resultado.to_s;
puts "El resultado de #{n1} + #{n2} es #{resultado}";