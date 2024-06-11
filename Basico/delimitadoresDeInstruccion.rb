#Los punto y coma (;) en Ruby se utilizan para delimitar instrucciones en una linea
num1 = 10; num2 = 20; num3 = 30
title = 'Estoy repasando Ruby'; developer='Francisco Naranjo'

puts num2
#Separar texto
split = "Viendo un contenido especifico \
separando el texto"


puts split

# Paréntesis ((, )) Agrupan argumentos de métodos o funciones.

puts("Hola, mundo")
suma = (1 + 2) * 3

# Llaves ({}, do...end) Delimitan bloques de código, como en bloques de iteradores y definiciones de métodos.
# Usando llaves
[1, 2, 3].each { |n| puts n }

# Usando do...end
[1, 2, 3].each do |n|
  puts n
end

# Uso de corchetes y comas
array = [1, 2, 3]
hash = { clave1: 'valor1', clave2: 'valor2' }

# Uso de do...end y llaves para bloques
array.each do |num|
  puts num
end

hash.each { |clave, valor| puts "#{clave}: #{valor}" }
