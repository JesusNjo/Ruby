string = 'Curso de Ruby!';

puts string.class();
puts string.length();

# Para recorrer un string al revez
pais = "Venezuela"

pais.chars.reverse_each do |ch|
    print ch
  end

# Para reemplazar una parte de una cadena con otra:
cadena = "Hola mundo"
nueva_cadena = cadena.replace("Hola Ruby")
puts nueva_cadena  # Output: "Hola Ruby"

# Para obtener un subconjunto de una cadena:
cadena = "Hola mundo"
substring = cadena[0..3]
puts substring  # Output: "Hola"

# Para concatenar dos cadenas:
cadena1 = "Hola"
cadena2 = " mundo"
resultado = cadena1 + cadena2
puts resultado  # Output: "Hola mundo"


# Para obtener la longitud de una cadena:

cadena = "Hola mundo"
longitud = cadena.length
puts longitud  # Output: 10

# Para convertir una cadena a mayúsculas o minúsculas:

cadena = "Hola Mundo"
mayusculas = cadena.upcase
minusculas = cadena.downcase
puts mayusculas  # Output: "HOLA MUNDO"
puts minusculas  # Output: "hola mundo"

# Para buscar la primera ocurrencia de un carácter o subcadena en una cadena:

cadena = "Hola mundo"
indice = cadena.index("m")
puts indice  # Output: 5

# Para buscar por elemento en una cadena:

cadena = "Hola"
caracter = cadena[1]
puts caracter  # Output: "o"
