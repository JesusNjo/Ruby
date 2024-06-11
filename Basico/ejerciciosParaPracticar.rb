require 'set'


# Retorno del 0 al numero y del 100 al equivalente: 1,99,2,98,3,97,4,96,5,95

(0..4).each do |i|
    print (i+1).to_s + ",";
    print (100-(i+1)).to_s + (i+1<5? ",":"\n")
end

# Cadena con coma de acuerdo al numero: 1,2,3,4,5,6,7,8,9
(1..9).each do |i|
    print i.to_s + (i<9 ? ",":"\n");
end

# Suseción fibonnacci

a = 0;
b = 1;

numFib = 10;
# Bucle for
for i in 0..numFib-1 do
    print a.to_s + (i<numFib-1 ? "," : "\n")
    c = a+b
    b = a
    a = c
end

# Bucle con rango

a = 0;
b = 1;

numFib = 10;

numFib.times do |i|
    print a.to_s + (i<numFib-1 ? ",": "\n");
    c = a+b;
    b = a;
    a = c;
end

#Numeros romanos

def findNumers(char)

    case char
    when 'I'
        return 1
    when 'V'
        return 5
    when 'X'
        return 10
    when 'L'
        return 50
    when 'C'
        return 100
    when 'D'
        return 500
    when 'M'
        return 1000
    else
        return 0
        
    end

end

def numerosRomanos(numeroR)
    resultado = 0;

    for i in 0..numeroR.length-1 do
        value = findNumers(numeroR[i]);
        if(i<numeroR.length-1 && value<findNumers(numeroR[i+1]))
            resultado -= value;
        else
            resultado += value
        end
    end
    puts resultado;
end

numerosRomanos('MMXXII')
numerosRomanos('MCMXCIV')


# Buscar el objetivo en un array

target = 17;
array = [2,3,5,1,12,6,9]

def findTarget(target,array)
    for i in 0..array.length do
        for j in i+1..array.length-1 do
            if(array[i] + array[j] == target)
                return [i].to_s + [j].to_s
            end
        end
    end
    return [].to_s
end

puts findTarget(target,array);

# Detectar si un numero es capicua

def numberCap(numeroCap)
    numberToString = numeroCap.to_s
    i = 0;
    j = numberToString.length-1

    while i<j do
        if(numberToString[i] != numberToString[j])
            return false
        end
        i+=1
        j-=1
    end
    return true
end
puts numberCap(121)
puts numberCap(123)


# Detectar si un string es capicua

def stringCapicua(word)
    
    for i in 0..word.length/2 do
        if(word[i] != word[word.length-1-i])
            return false
        end
    end
    return true
end

puts stringCapicua("radar")

# Detectar la palabra dentro de un string

def findWord(word)
    list = Set.new

    word.each_char do |charact|

        if (list.include?(charact))
            list.delete()
        end
    end
end



# Buscar longitud de la palabra entre cadena

string = 'welcomewelcomewelcomewelcome'

def findLengthInString(string)
    maxLong = 0
    left = 0
    list = Set.new

    string.each_char.with_index do |ch,i|
        while(list.include?(ch))
            list.delete(string[left])
            left+= 1
        end
        list.add(ch)
        maxLong = [maxLong,i-left+1].max
    end

    return maxLong
end

puts findLengthInString(string)

# Buscar el comun entre el array
strs = ['flor','flow','flower']
def longestPrefix(strs)
    # Si el array está vacío, devolvemos una cadena vacía
    return "" if strs.empty?
  
    # Ordenamos el array de cadenas
    strs.sort!
  
    # Tomamos la primera y la última cadena en el array ordenado
    first = strs.first # Se podria utilizar strs[0] // Esto sirve para tomar el primer valor del array
    last = strs.last # Se podria utilizar strs[-1] o strs[strs.length-1] // Esto sirve para tomar el ultimo valor del array

    # Inicializamos un índice para recorrer los caracteres
    i = 0
  
    # Comparamos los caracteres de la primera y la última cadena
    while i < first.length && i < last.length
      if first[i] != last[i]
        break
      end
      i += 1
    end
  
    # Devolvemos el prefijo común
    return first[0..i]
  end

puts longestPrefix(strs)

# Valid Parentheses (stack)
def isValid(s)
    stack = []

    s.each_char do |ch|
    if ch == '(' || ch == '{' || ch == '['
    stack.push(ch)
    else
    return false if stack.empty?

    top = stack.pop

    if (ch == ')' && top != '(') ||
       (ch == '}' && top != '{') ||
       (ch == ']' && top != '[')
        return false
       end
    end
end
   return stack.empty?
end

puts isValid('(){}[]')