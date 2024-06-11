class Automovil
    # Atributos

    @@VariableDeClase # Se implementan para utilizarla solamente en la clase



    attr_accessor :color, :marca #Para crear de forma directa los getters y setters

    #Tambien puede crearse de manera separada
    attr_reader :color,:marca #Para leer los elementos GET
    attr_writer :color,:marca #Para sobreescribir o asignar valores SET



    # Constructor
    def initialize(color, marca)
      @color = color
      @marca = marca
    end
  
    # Métodos
  
    def arrancar
      puts 'El automovil arrancó.'
    end
  
    def apagar
      puts 'El automovil ha sido apagado.'
    end
  
    # Getters y Setters
  
    # Getter para el color
    def color
      @color
    end
  
    # Setter para el color
    def color=(color)
      @color = color
    end
  
    # Getter para la marca
    def marca
      @marca
    end
  
    # Setter para la marca
    def marca=(marca)
      @marca = marca
    end
  end
  
 
# Ejemplo de uso

#Objeto 1

ferrari = Automovil.new('Rojo','Ferrari')
puts ferrari.marca

ferrari.arrancar
ferrari.apagar

#Objeto 2

porsche = Automovil.new('Negro','Porsche')

porsche.arrancar
porsche.apagar

nombre = porsche.class
puts nombre
puts (nombre.instance_of? String) # Preguntar si la variable u objeto pertenece a una clase



#Prueba constructor

#Todo lo que se inicializa es un constructor según su funcionamiento.

nombreNew = 'Juan Perez' # '' es el constructor o ""
5..10 #El constructor será los ..
[1,2,3,4,5,6,7] #El constructor serán los []


puts ferrari.methods.sort # Para verificar todos los metodos disponibles en la clase :
=begin
!
!=
!~
<=>
==
===
__id__
__send__
apagar
arrancar
class
clone
color
color=
define_singleton_method
display
dup
enum_for
eql?
equal?
extend
freeze
frozen?
hash
inspect
instance_eval
instance_exec
instance_of?
instance_variable_defined?
instance_variable_get
instance_variable_set
instance_variables
is_a?
itself
kind_of?
marca
marca=
method
methods
nil?
object_id
private_methods
protected_methods
public_method
public_methods
public_send
remove_instance_variable
respond_to?
send
singleton_class
singleton_method
singleton_methods
tap
then
to_enum
to_s
yield_self
=end

# Object_id

numero = 89

puts numero.object_id #Nos retorna un identificador del objeto en memoria
puts numero.__id__



ferrari.marca = "Macano"

puts ferrari.marca



