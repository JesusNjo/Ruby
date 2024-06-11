class Vehiculo

    attr_accessor :color,:marca,:tipo
    def initialize(color,marca,tipo)
        @color = color
        @marca = marca
        @tipo = tipo
    end

    def arrancar
        puts "El vehiculo #{tipo} ha arrancado."
    end

    def arrancar(seg) #Sobrecargar de metodo /REEMPLAZA EL PRIMER METODO, TAL CUAL COMO UN OVERWRITE
        puts "El vehiculo ha arrancado en #{seg} segundos"
    end

    def apagar
        puts "El vehiculo #{tipo} ha sido apagado."
    end


end