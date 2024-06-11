#Para crear un archivo

File.open('texto.txt','w') do |txt| # 'r' es para read y 'w' es para escribir y 'r+' lectura y escritura
    txt.puts "Welcome to the file"
end

#Para leer un archivo

File.open('texto.txt', 'r') do |txt2|
    while linea = txt2.gets
        puts linea
    end
end