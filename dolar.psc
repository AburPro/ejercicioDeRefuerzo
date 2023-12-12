Algoritmo dolar
	Escribir "Ingrese el número de dias"
	Leer d
	dimension precio[d]
	para i <- 1 hasta d Hacer
		escribir "Ingrese el precio del dolar del dia ", i
		leer precio[i]
	FinPara
	para j <- 1 hasta d hacer
		escribir "Dia ",j,": ", precio[j];
	FinPara
	alza=0
	para i=1 hasta d con paso 1 Hacer
		Si i <> 1 Entonces 
			Si (precio[i]-precio[i-1]) > alza Entonces
				alza=precio[i]-precio[i-1]				
			FinSi
			
		FinSi
	FinPara
	Escribir "La mayor alza fue de: ", alza
FinAlgoritmo