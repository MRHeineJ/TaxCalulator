# @hjmorantin [08-2015]
=begin
TODO

 - Convert this into a class/funtion.
 - Add the average price per pound of the courier and the math for the final price.
 - Agregar el calculo cuando es menor de US$ 200.0
 - Translate this to English
 - Search for all the companies that offers courier services in DR.
 - Add a funtion for the courier average (price per pound). 
 - Agregar una funcion que me permita seleccionar el Courier y el precio por libra.
 - Download the tax law. (Comision tecnica de Liberativa).
------------------------------------------------------------------------------------
=end

begin
	puts " "
	puts "Calculadora de Impuestos de Importacion"
	puts "---------------------------------------"
	puts " "
	puts "Valor del artiulo en US$:"
	puts " "
	valordolar = gets.chomp().to_f
	puts " "
	puts "Tasa del US$ a RD$:"
	puts " "
	tasadolar = gets.chomp.to_f
	valorpesos = valordolar * tasadolar
	
	if valordolar < 200
		puts " "
		puts "Este articulo no paga impuestos de importación."
		puts " "
		puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
		impuestocourier = 0
		puts " "
		puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
		grantotal = valorpesos + impuestocourier
		puts " "
		puts "Gran Total (RD$): " + grantotal.to_s
	else
		gravamen = valorpesos * 0.20 
		selectivo = (valorpesos + gravamen) * 0.10 
		itbis = (valorpesos + gravamen + selectivo) * 0.18 
		impuestocourier = gravamen + selectivo + itbis
		grantotal = valorpesos + impuestocourier
		puts " "
		puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
		puts " "
		puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
		puts " "
		puts "Gran Total (RD$): " + grantotal.to_s
	end
	puts " "
	puts "Este calculo no toma en cuenta el costo por libra del transporte."
end