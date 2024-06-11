#Variables comunes
numero = 5
string = 'Hola'

#Varaibles de objetos
@numeros
@strings

#Variables de clases

@@numerosV

# Constantes

PI= 3.1416

# Variables Globales

$config

# Variables de fecha

current_date = Time.now.strftime('%Y/%m/%d') #Para mostrar fecha actual

#Creacion de objetos

car = {
  make: 'Honda',
  model: 'Accord',
  color: 'Blue'
}

def paint_car(car)
  car[:color] = 'Red'
end

puts paint_car(car)