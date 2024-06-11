# Un Hash es el equivalente a los MAP en Java


autos = {
    'corvette' => 'chevrolet', #Indicamos la clave y luego => para el valor
    'aventador' => 'lamborghini',
    'maranello' => 'ferrari'
}

# Para mostrar todas las llaves
autos.each_key do |key|
    puts key
end

# Para mostrar todos los valores
autos.each_value do |value|
    puts value
end

# Mostrar valores individuales
puts autos['corvette'] # Me trae el valor de la llave que le indique

#---Indexar hashes con simbolos

tecnologias = {
    :r=>'Ruby',
    :j=>'Java',
    :p=>'Python',
    4=>'JavaScript' # Se puede indicar su clave tambien con numeros o combinar
}

puts tecnologias[:r] #Obtenemos el valor mediante simbolos
puts tecnologias[4] #Llamamos un valor mediantes su clave numerica