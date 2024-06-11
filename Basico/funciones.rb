def nombre #Definicion del metodo
    instrucciones #Instrucciones
end # Finalizacion del metodo

#Funcioens sin parametros
def saludar()
    puts 'Hola que tal';
end
#Funcioens con parametros
def sumar(n1,n2) #Creacion de funciones con parametros
    puts n1+n2;
end

#Funciones con retorno

def multiplicacion(n1,n2)
    return n1*n2;
end

resultado = multiplicacion(5,2);

saludar(); # Llamando al metodo

sumar(2,3); # Llamando metodo con parametros

puts resultado; #Retornamos el valor en una variable y la mostramos en pantalla
