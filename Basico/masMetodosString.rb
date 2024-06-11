cadena = "Ruby como lenguaje de programacion"
resultado = cadena.upcase

puts cadena.reverse
puts cadena.length
puts cadena.upcase
puts cadena.downcase
puts cadena.swapcase #Invierte las mayusculas a minusculas y al contrario
puts cadena.capitalize
puts cadena.slice(0,4) #Indicar el rango desde donde empezará hasta donde termina

unless (cadena.length == 24)
    puts 'Hola'
end

#Metodos bang! Son los metodos que terminan en ! para realizar modificaciones a los objetos
puts cadena #Objeto normal
resultado = cadena.upcase! #Cuando ejecuta el bang el objeto principal también cambia
puts cadena #Objeto modificado
puts resultado