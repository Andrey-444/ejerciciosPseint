Algoritmo promedio_a
	definir  digito1, digito2 , digito3, sumar Como Entero
	definir promedio Como Real
	
	Escribir "escriba tres digitos para calcular su promedio"
	leer digito1, digito2, digito3
	
	escribir "los valores ingresados son"
	escribir "--" digito1 "--" digito2 "--" digito3
	
	sumar <- digito1 + digito2 + digito3
	
	promedio <- (sumar/3)
	
	escribir "el promedio de los tres valores ingresados es:" promedio
	
FinAlgoritmo
