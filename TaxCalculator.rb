# Heine Morantin Agosto 2015 
puts "Calculadora de Impuestos de Importacion"
puts "---------------------------------------"
gets "Valor del artiulo en US$: " + valordolar
gets "Tasa del US$ a RD$: " + tasadolar
valorpesos = valordolar * tasadolar
gravamen = valorpesos * 0.20
selectivo = (valorpesos + gravamen) * 0.10
itbis = (valorpesos + gravamen + selectivo) * 0.18
impuestocourier = gravamen + selectivo + itbis
grantotal = valorpesos + impuestocourier
puts "Total a Pagar a la Tienda Online (RD$): " + valorpesos
puts "Total de Impuesto a Pagar al Courier (RD$): " + impuestocourier
puts "Gran Total (RD$): " + grantotal