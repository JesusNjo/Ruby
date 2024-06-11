require_relative 'vehiculo.class'

class Autobus < Vehiculo

    #overwrite
    def arrancar
        puts "El #{tipo} de color #{color} ha sido encendido."
    end
end

autoBus = Autobus.new("Amarillo","Jutong","Autobus")
autoBus2 = Vehiculo.new("Amarillo","Jutong","Autobus") #Aplicando POLIMORFISMO mantiene los mismos metodos de la clase padre


autoBus.arrancar #Sobre escribe el metodo porque se creo un overwrite
autoBus2.arrancar(5) #En este caso mantiene el valor original ya que fue instanciado con la clase vehiculo
