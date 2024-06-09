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
numerosRomanos('MCDXCIX')

