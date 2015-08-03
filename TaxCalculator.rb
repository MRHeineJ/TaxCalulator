# Heine Morantin Agosto 2015 
# TODO: Convertir esto en una funcion.
# TODO: Agregar el calculo de las libras
# TODO: Agregar una funcion que me permita seleccionar el Courier y el precio por libra.
begin
puts "Calculadora de Impuestos de Importacion"
puts "---------------------------------------"
puts "Valor del artiulo en US$:"
valordolar = gets.chomp().to_f
puts "Tasa del US$ a RD$:"
tasadolar = gets.chomp.to_f
valorpesos = valordolar * tasadolar
gravamen = valorpesos * 0.20 # Al valor en pesos del articulo se le cobra un 20% de Gravamen.
selectivo = (valorpesos + gravamen) * 0.10 # A la sumatoria del valor del arituclo y el gravamen se le cobra un 10% como selectivo al consumo.
itbis = (valorpesos + gravamen + selectivo) * 0.18 # A la sumatoria de el valor, el gravamen y el selectivo, se le cobra un 18% de ITBIS.
impuestocourier = gravamen + selectivo + itbis
grantotal = valorpesos + impuestocourier
puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos.to_s
puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier.to_s
puts "Gran Total (RD$): " + grantotal.to_s
end
