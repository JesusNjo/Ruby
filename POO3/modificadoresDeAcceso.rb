#Modificadores de acceso (igual que Java)
# -public
# -private
# -protected
class Persona
    attr_accessor :nombre, :apellido, :edad
  
    def initialize(nombre, apellido, edad)
      @nombre = nombre
      @apellido = apellido
      @edad = edad
      datosPersona
    end 
  
    private def datosPersona
      puts "Nombre: #{nombre}\nApellido: #{apellido}\nEdad: #{edad}"
    end
  end
  