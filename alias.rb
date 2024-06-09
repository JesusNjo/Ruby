#Sobrenombres para aplicar en los metodos

def saludar()
    puts "Hola"
end

#alias #nombreNuevo #nombreViejo

alias greetings saludar;

def saludar()
    puts "Otro texto"
end

greetings();
saludar();