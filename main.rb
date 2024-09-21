puts "Seleccionar marca"
marca = gets.chomp

precio_unitario = 0

case marca
when "Rostington"
  precio_unitario = 5000
when "Premiere"
  precio_unitario = 10000
else
  puts "Marca no válida"
  exit
end

puts "Ingresar cantidad"
cantidad = gets.to_i

descuento = 0

if marca == "Rostington"
  if cantidad < 100
    descuento = 0.20
  elsif cantidad <= 200
    descuento = 0.25
  else
    descuento = 0.45
  end
else
  if cantidad < 100
    descuento = 0.10
  elsif cantidad <= 200
    descuento = 0.15
  else
    descuento = 0.25
  end
end

precio_total_sin_descuento = precio_unitario * cantidad
precio_total_con_descuento = precio_total_sin_descuento * (1 - descuento)

puts "Precio: #{precio_total_sin_descuento}"
puts "Aplicar descuento: #{(descuento * 100).to_i}%"
puts "Precio total: #{precio_total_con_descuento}"
puts "Generar factura"

