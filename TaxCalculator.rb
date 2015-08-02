# Heine Morantin Agosto 2015 
begin
puts "Calculadora de Impuestos de Importacion"
puts "---------------------------------------"
puts "Valor del artiulo en US$:"
valordolar = gets.chomp().to_f
puts "Tasa del US$ a RD$:"
tasadolar = gets.chomp.to_f
valorpesos = valordolar * tasadolar
gravamen = valorpesos * 0.20
selectivo = (valorpesos + gravamen) * 0.10
itbis = (valorpesos + gravamen + selectivo) * 0.18
impuestocourier = gravamen + selectivo + itbis
grantotal = valorpesos + impuestocourier
puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
puts "Gran Total (RD$): " + grantotal.to_s
end