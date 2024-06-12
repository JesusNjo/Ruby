numberArray = [1, 2, 15, 3, 4, 5, 6, 7, 8, 15]
arrayN = [2, 3, 4, 5, 6]
nombre = [
  { nombre: 'Pedro', edad: 20 }, # Creación de objetos en Ruby
  { nombre: 'Juan', edad: 25 }
]

pop = numberArray.pop # Toma el último elemento del array, lo guarda en la variable y lo elimina del array original
push = numberArray.push(6) # Agrega un elemento al final del array y lo guarda en el array
length = numberArray.length # Devuelve la cantidad de elementos en un array
empty = numberArray.empty? # Retorna true si está vacío, false si tiene elementos
any = numberArray.any? { |number| number > 10 } # Evalúa la condición, si alguno la cumple retorna true, sino retorna false
shift = numberArray.shift # Elimina el primer elemento del array y lo devuelve
unshift = numberArray.unshift(12) # Agrega uno o más elementos al principio del array
include = numberArray.include?(2) # Devuelve true si el array contiene el valor especificado, false de lo contrario
index = numberArray.index(5) # Devuelve el índice del primer elemento igual al valor especificado, o nil si no se encuentra
join = numberArray.join('|') # Une los elementos del array en una cadena, separados por el delimitador dado
reverse = numberArray.reverse # Devuelve un nuevo array con los elementos en orden inverso
sort = numberArray.sort # Devuelve un nuevo array con los elementos ordenados
uniq = numberArray.uniq # Devuelve un nuevo array con valores únicos, eliminando duplicados
slice = numberArray.slice(0, 3) # Devuelve una porción del array, especificada por un índice inicial y un índice final (opcional)
map = numberArray.map { |x| x } # Devuelve un nuevo array con los resultados del bloque
at = numberArray.at(0) # Devuelve el elemento en el índice dado
first = numberArray.first # Devuelve el primer elemento
last = numberArray.last # Devuelve el último elemento
take = numberArray.take(3) # Devuelve los primeros n elementos
drop = numberArray.drop(2) # Devuelve el array después de eliminar los primeros n elementos
insert = numberArray.insert(1, 2) # Inserta un elemento en el índice dado
delete = numberArray.delete(2) # Elimina todas las ocurrencias del valor dado
delete_if = numberArray.delete_if { |item| item > 5 } # Elimina los elementos que cumplen la condición dada
compact = numberArray.compact # Devuelve un array sin los valores nil
rindex = numberArray.rindex(15) # Devuelve el índice de la última ocurrencia del valor dado
find_index = numberArray.find_index { |item| item > 5 } # Devuelve el índice del primer elemento que cumple la condición dada
count = numberArray.count # Devuelve el número de elementos
none = numberArray.none? { |x| x < 0 } # Devuelve true si ningún elemento cumple la condición dada
all = numberArray.all? { |x| x > 0 } # Devuelve true si todos los elementos cumplen la condición dada
each = numberArray.each { |x| x } # Itera sobre cada elemento
each_with_index = numberArray.each_with_index { |item, index| "#{item}#{index}" } # Itera sobre cada elemento con su índice
select = numberArray.select { |item| item > 10 } # Devuelve un nuevo array con los elementos que cumplen la condición del bloque
reject = numberArray.reject { |item| item > 10 } # Devuelve un nuevo array con los elementos que no cumplen la condición del bloque
flatten = numberArray.flatten # Devuelve un nuevo array con un nivel menos de anidación
sample = numberArray.sample # Devuelve un elemento aleatorio del array
zip = numberArray.zip(arrayN) # Combina los elementos de ambos arrays en pares
rotate = numberArray.rotate(3) # Devuelve un nuevo array rotado n posiciones
fill = numberArray.fill(5) # Llena el array con el valor dado
concat = numberArray.concat([10, 11, 12]) # Agrega elementos de otro array al array original
clear = numberArray.clear # Elimina todos los elementos del array
product = numberArray.product([1, 2]) # Combina elementos del array con los elementos de otro array
numberArray.cycle(2) { |x| cycle_result << x } # Itera sobre los elementos del array el número de veces especificado
delete_at = numberArray.delete_at(2) # Elimina el elemento en el índice especificado
drop_while = numberArray.drop_while { |x| x < 5 } # Elimina elementos mientras la condición se cumpla
each_slice_result = []
numberArray.each_slice(3) { |slice| each_slice_result << slice } # Itera sobre el array en fragmentos del tamaño especificado
each_cons_result = []
numberArray.each_cons(3) { |slice| each_cons_result << slice } # Itera sobre el array en fragmentos consecutivos del tamaño especificado
find = numberArray.find { |x| x > 5 } # Devuelve el primer elemento que cumple la condición dada
max = numberArray.max # Devuelve el elemento con el valor máximo
min = numberArray.min # Devuelve el elemento con el valor mínimo
max_by = numberArray.max_by { |x| -x } # Devuelve el elemento para el cual el valor del bloque es el máximo
min_by = numberArray.min_by { |x| -x } # Devuelve el elemento para el cual el valor del bloque es el mínimo
reduce = numberArray.reduce(0) { |sum, x| sum + x } # Acumula valores del array usando un bloque
partition = numberArray.partition { |x| x.even? } # Divide los elementos en dos arrays, dependiendo si cumplen o no con la condición dada

puts "pop: #{pop.to_s}" # Output: 15
puts "push: #{push.to_s}" # Output: [12, 2, 15, 3, 4, 5, 6, 7, 8, 6]
puts "length: #{length}" # Output: 10
puts "empty: #{empty}" # Output: false
puts "any: #{any}" # Output: true
puts "shift: #{shift}" # Output: 1
puts "unshift: #{unshift.to_s}" # Output: [12, 2, 15, 3, 4, 5, 6, 7, 8, 6]
puts "include: #{include}" # Output: true
puts "index: #{index}" # Output: 5
puts "join: #{join.to_s}" # Output: 12|2|15|3|4|5|6|7|8|6
puts "reverse: #{reverse.to_s}" # Output: [6, 8, 7, 6, 5, 4, 3, 15, 2, 12]
puts "sort: #{sort.to_s}" # Output: [2, 3, 4, 5, 6, 6, 7, 8, 12, 15]
puts "uniq: #{uniq.to_s}" # Output: [12, 2, 15, 3, 4, 5, 6, 7, 8]
puts "slice: #{slice.to_s}" # Output: [12, 2, 15]
puts "map: #{map.to_s}" # Output: [12, 2, 15, 3, 4, 5, 6, 7, 8, 6]
puts "nombre: #{nombre.map { |x| x[:nombre] }}" # Output: ["Pedro", "Juan"]
puts "at: #{at}" # Output: 1
puts "first: #{first}" # Output: 1
puts "last: #{last}" # Output: 15
puts "take: #{take.to_s}" # Output: [1, 2, 3]
puts "drop: #{drop.to_s}" # Output: [3, 4, 5, 6, 7, 8, 15]
puts "insert: #{insert.to_s}" # Output: [1, 2, 2, 15, 3, 4, 5, 6, 7, 8, 15]
puts "delete: #{delete}" # Output: 2
puts "delete_if: #{delete_if.to_s}" # Output: [1, 2, 3, 4, 5]
puts "compact: #{compact.to_s}" # Output: [1, 2, 3, 4, 5]
puts "rindex: #{rindex.to_s}" # Output: 9
puts "find_index: #{find_index.to_s}" # Output: 5
puts "count: #{count.to_s}" # Output: 10
puts "none: #{none.to_s}" # Output: true
puts "all: #{all.to_s}" # Output: true
puts "each: #{each.to_s}" # Output: [1, 2, 3, 4, 5, 6, 7, 8, 15]
puts "each_with_index: #{each_with_index.to_s}" # Output: [1, 2, 3, 4, 5, 6, 7, 8, 15]
puts "select: #{select.to_s}" # Output: [15]
puts "reject: #{reject.to_s}" # Output: [1, 2, 3, 4, 5, 6, 7, 8]
puts "flatten: #{flatten.to_s}" # Output: [1, 2, 3, 4, 5, 6, 7, 8, 15]
puts "sample: #{sample.to_s}" # Output: (random element from array)
puts "zip: #{zip.to_s}" # Output: [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, nil], [7, nil], [8, nil], [15, nil]]
puts "rotate: #{rotate.to_s}" # Output: [3, 4, 5, 6, 7, 8, 15, 1, 2]
puts "fill: #{fill.to_s}" # Output: [5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
puts "concat: #{concat.to_s}" # Output: [1, 2, 15, 3, 4, 5, 6, 7, 8, 15, 10, 11, 12]
puts "clear: #{clear.to_s}" # Output: []
puts "product: #{product.to_s}" # Output: [[1, 1], [1, 2], [2, 1], [2, 2], [15, 1], [15, 2], ...]
puts "cycle: #{cycle_result.to_s}" # Output: [1, 2, 15, 3, 4, 5, 6, 7, 8, 15, 1, 2, 15, 3, 4, 5, 6, 7, 8, 15]
puts "delete_at: #{delete_at.to_s}" # Output: 15
puts "drop_while: #{drop_while.to_s}" # Output: [5, 6, 7, 8, 15]
puts "each_slice: #{each_slice_result.to_s}" # Output: [[1, 2, 3], [4, 5, 6], [7, 8, 15]]
puts "each_cons: #{each_cons_result.to_s}" # Output: [[1, 2, 3], [2, 3, 4], [3, 4, 5], [4, 5, 6], [5, 6, 7], [6, 7, 8], [7, 8, 15]]
puts "find: #{find.to_s}" # Output: 6
puts "max: #{max.to_s}" # Output: 15
puts "min: #{min.to_s}" # Output: 1
puts "max_by: #{max_by.to_s}" # Output: 1
puts "min_by: #{min_by.to_s}" # Output: 15
puts "reduce: #{reduce.to_s}" # Output: 66
puts "partition: #{partition.to_s}" # Output: [[2, 4, 6, 8], [1, 3, 5, 7, 15, 15]]

puts "\nArray Original"
puts numberArray.to_s # Output: [1, 2, 15, 3, 4, 5, 6, 7, 8, 15]
