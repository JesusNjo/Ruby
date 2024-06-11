i = 0;

#Bucle while en Ruby
while i<10
    puts i;
    i +=1;
end

#Bucle until
i = 0
until i >= 5 do
  puts i
  i += 1
end
#Bucle for
for i in 0..4 do
    puts i
  end
#Bucle foreach
(0..4).each do |i|
    puts i
end

#Iteración con each
arr = [1, 2, 3, 4, 5]
arr.each do |item|
  puts item
end

#Bucle loop (do while)
i = 0
loop do
  puts i
  i += 1
  break if i >= 5
end

# Control de Flujo
i = 0
while i < 5 do
  puts i
  i += 1
  break if i == 3
end

  
#Método each_char
cadena = "Hola mundo"
cadena.each_char do |caracter|
  puts caracter
end
