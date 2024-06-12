# Buscar lo comun en las palabras

string = ['Java', 'JavaScript', 'JavaCoffee']

def palabraComun(array)
   prefix = array.reduce do |s1,s2|

    while !s2.start_with?(s1)
        s1 = s1[0...-1]
        break if s1.empty?
    end
    s1

   end
   prefix ||""
end

puts palabraComun(string) # Output: "Java"

# Buscar longitud de la palabra entre cadena

def palabraComunEntreCadena(string)
    maxLong = 0
    left = 0
    list = Set.new()
    transform = string.downcase
    transform.each_char.with_index do |ch,i|
        
        if list.include?(ch)
            list.delete(string[left])
            left+=1
        end
        list.add(ch)
        maxLong = [maxLong,i-left+1].max
    end
    maxLong
end
puts palabraComunEntreCadena("RubyRubyRubyrubyRubyruby") # Output: "4"
 

# Detectar si una palabra es capicua

def isCapicua(string)

    (0..string.length/2).each do |i|
        if(string[i] != string[string.length-i-1])
            return false
        end
    end
    return true
end

puts isCapicua("radar") # Output: "true"
puts isCapicua("hermano") # Output: "false"

# Detectar si un numero es capicua

def isNumberCap(number)
    numberToString = number.to_s
    i =0
    j = numberToString.length-1

    while i<j
        if numberToString[i] != numberToString[j]
            return false
        end
            i+= 1
            j-= 1
    end
    return true
end

puts isNumberCap(121) # Output: "true"
puts isNumberCap(321) # Output: "false"

# Retornar la posicion del target
target = 15
array = [5,2,4,8,10,3,2,5,9]

def targetPositition(array,target)

    (0..array.length).each do |i|
        (i+1..array.length).each do |j|
            if array[i] + array[j] == target
                return [i].to_s + [j].to_s
            end
        end
    end
    return [].to_a
end

puts targetPositition(array,target) # Output: [0][4]

# Traducir numeros romanos a normales

def romanToNumber(roman)
    result = 0
    map = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    roman.each_char.with_index do |ch,i|
        value = map[ch]
        if i< roman.length-1 && value < map[roman[i+1]]
            result -= value
        else
            result +=value
        end
    end
    return result
end

puts romanToNumber('MCMXCIV') # Output: 1994
puts romanToNumber('MMXXII') # Output: 2022


# Valid Parentheses (stack)

def isValid(parent)
    stack = []

    parent.each_char do |ch|
        if ch == '(' || ch == '{' || ch == '['
            stack.push(ch)
        else
            return false if stack.empty?

            temp = stack.pop

            if (
                ch == ')' && temp !='(' ||
                ch == '}' && temp !='{' ||
                ch == ']' && temp !='[' 
            )
            return false
            end
        end
    end
    return stack.empty?
end

puts isValid('([]{})') # Output: true
puts isValid('([)]') # Output: false

# Suseción fibonnacci

def fibonnacciFunc(numb)
    a = 0
    b = 1
    array = []

    numb.times do
        array.push(a)
        c = a+b
        b = a
        a = c
    end

    return array.to_s
end
puts fibonnacciFunc(10) #Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

# Cadena con coma de acuerdo al numero: 1,2,3,4,5,6,7,8,9

def stringNumberComa(number)

    number.times do |i|
        # sequence = (1..number).to_a 
        # puts sequence.join(,)

        print (i==0? "[": "")+(i+1).to_s + (i< number-1 ? ",": "]\n")
    end
end

stringNumberComa(10) #Output: [1,2,3,4,5,6,7,8,9,10]

# Retorno del 1 al numero y del 100 al equivalente: 1,99,2,98,3,97,4,96,5,95

def oneToHundred(number)

    (1..number).each do |i|
        print i.to_s + ","
        print (100-i).to_s + (i<number ? "," : "\n")
    end
end

oneToHundred(5)

# Eliminar duplicados en un vector LIST

array = [2,3,4,5,6,7,8,2,1,3]
def removeDuplicates(array)
    list = []

    array.each do |element|
        unless list.include?(element)
            list.push(element)
        end
    end
    return list.sort.to_s
end

puts removeDuplicates(array) #Output: [1, 2, 3, 4, 5, 6, 7, 8]