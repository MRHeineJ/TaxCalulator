# @hjmorantin [08-2015]
=begin
TODO
 - Convertir esto en una funcion.
 - Agregar el calculo de las libras
 - Agregar una funcion que me permita seleccionar el Courier y el precio por libra.
------------------------------------------------------------------------------------
=end

begin
puts "Calculadora de Impuestos de Importacion"
puts "---------------------------------------"
puts "Valor del artiulo en US$:"
valordolar = gets.chomp().to_f
puts "Tasa del US$ a RD$:"
tasadolar = gets.chomp.to_f
valorpesos = valordolar * tasadolar

if valordolar < 200
	puts "Este articulo no paga impuestos de importación."
	puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
	impuestocourier = 0
	puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
	grantotal = valorpesos + impuestocourier
	puts "Gran Total (RD$): " + grantotal.to_s
else
	gravamen = valorpesos * 0.20 
	selectivo = (valorpesos + gravamen) * 0.10 
	itbis = (valorpesos + gravamen + selectivo) * 0.18 
	impuestocourier = gravamen + selectivo + itbis
	grantotal = valorpesos + impuestocourier
	puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
	puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
	puts "Gran Total (RD$): " + grantotal.to_s
end
puts "Este calculo no toma en cuenta el costo por libra del transporte."
end
