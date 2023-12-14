Algoritmo maquinaDeAlimentos
	
    Escribir 'Listado de productos'
    Escribir 'A: valor = $270'
    Escribir 'B: valor = $340'
    Escribir 'C: valor = $390'
    Leer option
	
    Segun option Hacer
        'A':
            value <- 270
        'B':
            value <- 340
        'C':
            value <- 390
        De Otro Modo:
            Escribir 'Valor invalido'
    FinSegun
	
    Escribir 'Solo puedes ingresar monedas de: $10, $50 y $100'
    sumaMonedas <- 0
    Repetir
        Escribir 'Ingresa una moneda'
        Leer moneda 
        Segun moneda Hacer
            10:
                moneda <- 10
            50: 
                moneda <- 50
            100: 
                moneda <- 100
            De Otro Modo:
                moneda <- 0
                Escribir 'La moneda ingresada no es valida'
        FinSegun
		
        sumaMonedas <- sumaMonedas + moneda;
		
    Hasta Que sumaMonedas >= value
	
    diferencia <- sumaMonedas - value
	
    Si diferencia <> 0 Entonces
        Escribir 'Su vuelto: '
    FinSi
	
    Mientras diferencia <> 0 Hacer
		
        Si diferencia >= 100 Entonces
            vueltas <- diferencia - 100;
            Escribir 100
        SiNo
            Si  diferencia >= 50 Y diferencia < 100 Entonces
                vueltas <- diferencia - 50
                Escribir 50
            SiNo
                Si diferencia < 50 Entonces
                    vueltas <- diferencia - 10
                    Escribir 10
                FinSi
            FinSi
        FinSi
        diferencia <- vueltas
		
    Fin Mientras
	
FinAlgoritmo