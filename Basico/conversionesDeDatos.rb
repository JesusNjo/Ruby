#Conversión de Entero a Cadena
num = 10
num_to_string = num.to_s
puts num_to_string  # Esto imprimirá "10"

#Conversión de Cadena a Entero
num_string = "10"
num = num_string.to_i
puts num  # Esto imprimirá 10

#Convertir a Float: .to_f
num_string = "10.5"
num = num_string.to_f
puts num  # Esto imprimirá 10.5

#Convertir a Símbolo: .to_sym
string = "hello"
sym = string.to_sym
puts sym  # Esto imprimirá :hello

#Convertir a Arreglo: .to_a
range = (1..5)
arr = range.to_a
puts arr.inspect  # Esto imprimirá [1, 2, 3, 4, 5]

#Convertir a Hash: .to_h
arr = [[:key, "value"]]
hash = arr.to_h
puts hash.inspect  # Esto imprimirá {:key=>"value"}




# Entero a Cadena
num = 42
num_to_string = num.to_s
puts "Número como cadena: " + num_to_string  # "Número como cadena: 42"

# Cadena a Entero
str = "42"
str_to_int = str.to_i
puts "Cadena como número: #{str_to_int}"  # "Cadena como número: 42"

# Cadena a Float
str = "3.14"
str_to_float = str.to_f
puts "Cadena como float: #{str_to_float}"  # "Cadena como float: 3.14"

# Entero a Float
int = 10
int_to_float = int.to_f
puts "Entero como float: #{int_to_float}"  # "Entero como float: 10.0"

# Cadena a Símbolo
str = "ruby"
str_to_sym = str.to_sym
puts "Cadena como símbolo: #{str_to_sym}"  # "Cadena como símbolo: ruby"

# Array a Hash
array = [[:name, "Alice"], [:age, 30]]
array_to_hash = array.to_h
puts "Array como hash: #{array_to_hash}"  # "Array como hash: {:name=>"Alice", :age=>30}"
