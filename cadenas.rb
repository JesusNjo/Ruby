# Se puede utilizar "" y ''. Funcionan de igual manera como en JS
#La diferencia entre comillas simples y dobles, la comillas simples '' compilan mas rapido
#Con comillas simples se puede utilizar las secuencias de escape: \s \n
puts "Hola con comillas doble";
puts 'Hola con comillas simple';

# Concatenación de cadenas
puts "Hola "+ "Mundo";

#Secuencias de escape
puts "Hola\s"+"Mundo"; #La S sirve para hacer un espacio
puts "Hola\s"+"Mundo\n"; #Como en JAVA, la N da saltos de linea

# Hacer una cadena varias veces
puts "Hola Mundo\s\n" * 3; #Hace que las cadenas salgan 3 veces