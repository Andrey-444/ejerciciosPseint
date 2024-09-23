Proceso AgenciaDeViajes
    Definir destino Como Entero
    Definir dias Como Entero
    Definir costoPorDia Como Real
    Definir costoTotal Como Real
    Definir descuento Como Real
    Definir totalConDescuento Como Real
    Definir continuar Como Caracter
	
    continuar = "s�" // Variable que controla el bucle
	
    Repetir
        Escribir "Seleccione un destino:"
        Escribir "1. Playa - $500.000 por d�a"
        Escribir "2. Monta�a - $400.000 por d�a"
        Escribir "3. Ciudad - $300.000 por d�a"
        
        Leer destino
        
        // Verificar que el destino es v�lido
        Segun destino Hacer
            1:
                costoPorDia = 500000
                Escribir "Usted ha seleccionado: Playa"
            2:
                costoPorDia = 400000
                Escribir "Usted ha seleccionado: Monta�a"
            3:
                costoPorDia = 300000
                Escribir "Usted ha seleccionado: Ciudad"
            De Otro Modo:
                Escribir "Opci�n no v�lida. Intente de nuevo."
                
        Fin Segun
		
        Escribir "Ingrese la cantidad de d�as de estancia:"
        Leer dias
        
        // Calcular costo total
        costoTotal = dias * costoPorDia
        
        // Calcular descuento
        Si dias >= 7 Entonces
            descuento = 0.15
        Sino
            Si dias >= 3 Entonces
                descuento = 0.10
            Sino
                descuento = 0.0
            Fin Si
        Fin Si
		
        // Calcular el total a pagar
        totalConDescuento = costoTotal - (costoTotal * descuento)
		
        // Mostrar resultados al usuario
        Escribir "Costo total del viaje: $", costoTotal
        Escribir "Descuento aplicado: ", (descuento * 100), "%"
        Escribir "Total a pagar: $", totalConDescuento
		
        // Preguntar si desea hacer otra reserva
        Escribir "�Desea realizar otra reserva? (s�/no)"
        Leer continuar
        continuar = Minusculas(continuar) // Para aceptar "S�", "s�", "NO", etc.
		
    Hasta Que continuar <> "s�" // Termina cuando el usuario no desea continuar
	
    Escribir "Gracias por usar nuestros servicios. �Buen viaje!"
Fin Proceso