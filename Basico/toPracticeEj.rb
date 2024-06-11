#target

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

array = [1,2,3,4,5,6,7,8,9]
target = 5

puts findTarget(target,array)

#capicua numero

def numeroCap(num)
    toString = num.to_s
    for i in (0..toString.length/2) do
        if toString[i] != toString[toString.length-1-i]
            return false
        end
    end
    return true
end

puts numeroCap(121)

#palabra entre

cadena ='holaholaholahola'


def findWordInString(string)
    maxLong = 0
    left = 0
    list = Set.new
    rigth = 0

    if string.length == 0
        return 0
    else
        string.each_char do |ch|
            rigth+=1
            actual = ch
    
            if(list.include?(actual))
                list.delete(string[left])
                left+=1
            end
            list.add(ch)
            
        end
    end

    return list.size
    
end

puts findWordInString(cadena)
