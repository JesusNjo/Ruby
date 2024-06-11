for i in 0..10 do
    puts i
end


puts '---------------------'

puts (1..8).to_a # Convierte la funcion en un array y lo recorre

puts '---------------------'
cadena = 'caracter'

puts (1..cadena.length).to_a #Rankear de un numero a una longitud de una cadena

#Metodos de rangos
puts '----Metodos de rango----'
rango = (1..5)

puts rango.to_a #Transforma el rango a un array
puts rango.min  #Retorna el valor minimo del rango
puts rango.max  #Retorna el valor maximo del rango
puts rango.include?(3) #Retorna un boolean si contiene el valor agregado (Como un contains en JAVA)
puts (1..5).equal?rango
puts rango === 5 #Retorna un boolean si contiene el comparado agregado


# Puntos en los rangos

#.. (dos puntos) crea un rango inclusivo, lo que significa que incluye tanto el primer como el último elemento del rango.
#... (tres puntos) crea un rango exclusivo, lo que significa que incluye el primer elemento del rango pero excluye el último.