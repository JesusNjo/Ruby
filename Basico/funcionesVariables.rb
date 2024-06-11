def nombres(*args) #El asterisco indica que ira 1 o mas argumentos
    puts args[0] #Puedo indicar la posicion del argumento que quiero seleccionar 

    puts args #Los guarda como un array

    return args
end


nombres('Juan',2,'Pedro')
array = nombres('Pedro',"Maria",'Juana','Roberto')

puts array.length

#Argumentos opcionales

def nombresOpcionales(nombre1,nombre2,*nombre3) 
    #Si no se indica el nombre3 no pasa nada porque el * indica que no es necesario pasarle valor a este argumento y por lo tanto es opcional
    puts "El nombre 1 es #{nombre1}"
    puts "El nombre 2 es #{nombre2}"
    puts "El nombre 3 es #{nombre3}"
end

nombresOpcionales('Juan','Carlos','Leo') #Mostrada ["Leo"] de esa forma, porque lo envia como argumento especial
                                         #Si no se envia el parametro, se imprime [] vacio.