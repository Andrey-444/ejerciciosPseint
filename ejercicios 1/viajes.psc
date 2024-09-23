Proceso AgenciaDeViajes
    Definir destino Como Entero
    Definir dias Como Entero
    Definir costoPorDia Como Real
    Definir costoTotal Como Real
    Definir descuento Como Real
    Definir totalConDescuento Como Real
    Definir continuar Como Caracter
	
    continuar = "sí" // Variable que controla el bucle
	
    Repetir
        Escribir "Seleccione un destino:"
        Escribir "1. Playa - $500.000 por día"
        Escribir "2. Montaña - $400.000 por día"
        Escribir "3. Ciudad - $300.000 por día"
        
        Leer destino
        
        // Verificar que el destino es válido
        Segun destino Hacer
            1:
                costoPorDia = 500000
                Escribir "Usted ha seleccionado: Playa"
            2:
                costoPorDia = 400000
                Escribir "Usted ha seleccionado: Montaña"
            3:
                costoPorDia = 300000
                Escribir "Usted ha seleccionado: Ciudad"
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo."
                
        Fin Segun
		
        Escribir "Ingrese la cantidad de días de estancia:"
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
        Escribir "¿Desea realizar otra reserva? (sí/no)"
        Leer continuar
        continuar = Minusculas(continuar) // Para aceptar "Sí", "sí", "NO", etc.
		
    Hasta Que continuar <> "sí" // Termina cuando el usuario no desea continuar
	
    Escribir "Gracias por usar nuestros servicios. ¡Buen viaje!"
Fin Proceso