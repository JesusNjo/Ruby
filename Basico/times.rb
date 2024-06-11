# Clase time adquiere los datos del sistema acerca de la hora, fecha, etc.

#Creación de objetos Time
t = Time.now               # Hora y fecha actual
t = Time.new               # Hora y fecha actual
t = Time.local(2023, 6, 12, 8, 0, 0)   # Tiempo local específico
t = Time.utc(2023, 6, 12, 8, 0, 0)     # Tiempo UTC específico

t = Time.now #Guarda la hora y fecha actual

puts t.strftime('%Y-%m-%d %H:%M:%S')  # Formato de fecha y hora
puts t.strftime('Hora actual: %H:%M %Z')  # Formato personalizado

t = Time.now

puts t.year    # Año
puts t.month   # Mes
puts t.day     # Día
puts t.hour    # Hora
puts t.min     # Minuto
puts t.sec     # Segundo
puts t.wday    # Día de la semana (0: Domingo, 1: Lunes, ..., 6: Sábado)
puts t.yday    # Día del año (1..366)
puts t.zone    # Zona horaria
puts t.usec    # Microsegundos

#Comparación de objetos Time
t1 = Time.new(2023, 6, 12, 8, 0, 0)
t2 = Time.new(2023, 6, 12, 9, 0, 0)

puts t1 < t2    # true
puts t1 == t2   # false
puts t1 > t2    # false

#Operaciones aritméticas con Time
t = Time.now
t_future = t + 60 * 60  # Sumar una hora
t_past = t - 60 * 60    # Restar una hora

puts t
puts t_future
puts t_past

#Métodos de conversión
t = Time.now

puts t.to_s          # Convierte a cadena de texto
puts t.to_a          # Convierte a array [sec, min, hour, day, month, year, wday, yday, isdst, zone]
puts t.to_f          # Convierte a número flotante (segundos desde epoch)
puts t.to_i          # Convierte a número entero (segundos desde epoch)
puts t.to_r          # Convierte a número racional (segundos desde epoch)
puts t.to_time       # Devuelve el objeto `Time` mismo (no cambia)
puts t.to_datetime   # Convierte a objeto `DateTime`

#Métodos relacionados con la zona horaria
t = Time.now

puts t.getlocal            # Convierte a la hora local
puts t.getutc              # Convierte a UTC
puts t.gmt?                # Devuelve true si está en GMT
puts t.utc?                # Devuelve true si está en UTC
puts t.localtime           # Convierte a la hora local (modifica el objeto)
puts t.utc                 # Convierte a UTC (modifica el objeto)
puts t.zone                # Devuelve la zona horaria

#Métodos relacionados con la manipulación del tiempo
t = Time.now

puts t.succ       # Devuelve un nuevo objeto `Time` un segundo después
puts t + 10       # Suma 10 segundos
puts t - 10       # Resta 10 segundos
puts t.round      # Redondea a los segundos más cercanos
puts t.round(2)   # Redondea a los centisegundos más cercanos
puts t.ceil       # Redondea hacia arriba a los segundos más cercanos
puts t.floor      # Redondea hacia abajo a los segundos más cercanos


# Ejemplo completo

t = Time.now             # Hora y fecha actual
h = t.strftime('Hora actual: %H:%M %Z')  # Devuelve la hora actual

puts t                   # Imprime la hora y fecha actual
puts h                   # Imprime la hora actual en el formato especificado

# Ejemplo de acceso a componentes individuales
puts "Año: #{t.year}"
puts "Mes: #{t.month}"
puts "Día: #{t.day}"
puts "Hora: #{t.hour}"
puts "Minuto: #{t.min}"
puts "Segundo: #{t.sec}"

# Ejemplo de aritmética con tiempo
puts "Una hora después: #{t + 3600}"

# Ejemplo de conversión a otros formatos
puts "Como cadena de texto: #{t.to_s}"
puts "Como entero (segundos desde epoch): #{t.to_i}"
