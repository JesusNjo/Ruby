n1 = 5;
n2 = 78;

#Estructura condicional if - else
if n1>n2
    puts n1.to_s + "\s es mayor que\s"+n2.to_s
elsif n1==n2
    puts "Los numeros son iguales\s"+n1.to_s
else
    puts n2.to_s+"\ses mayor que \s"+n1.to_s
end

#Estructura condicional UNLESS

unless 5>10
    puts "La condificion es falsa"
end

#Estrucutra condicional CASE (tipico Switch CASE)

case n1 #Valor a evaluar en la estructur
when 0 #Condiciones de casos
    puts 'Valor de la variable 0'
when 1
    puts 'Valor de la variable 1'
when 2
    puts 'Valor de la variable 2'
when 3
    puts 'Valor de la variable 3'
when 4
    puts 'Valor de la variable 4'
when 5
    puts 'Valor de la variable 5'
else # El default de otros lenguajes
    puts "No existe esta condicion."
end

#Estrucutra condicional CASE con rango

case n2
when 0..12 #Indicamos el rango, en este caso va ir de 0 a 12
    puts "Este valor está entre 0 y 12";
when 13..24
    puts "Este valor está entre 13 y 24";
when 25..38
    puts "Este valor está entre 25 y 38";
when 39..50
    puts "Este valor está entre 39 y 50";
else
    puts "El valor esta fuera de rango";
end