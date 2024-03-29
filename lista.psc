funcion ascendente(lista_ascendente)
	Para i<- 1 Hasta 10 Con Paso 1 Hacer 
		Para j=1 Hasta 9 Con Paso 1 Hacer 
			Si lista_ascendente[j] > lista_ascendente[j+1] Entonces
				aux = lista_ascendente[j];		
				lista_ascendente[j] = lista_ascendente[j+1]; 
				lista_ascendente[j+1] = aux;
				
			Fin Si
		Fin Para
		
	Fin Para
FinFuncion

funcion descendente(lista_ascendente, lista_descendente)
	Para i<- 10 Hasta 1 Con Paso -1 Hacer 
		j = j +1 
		lista_descendente[j] = lista_ascendente[i];
	FinPara
	
FinFuncion

funcion imprimir_lista (lista)
	Escribir "" Sin Saltar
	para cada elemento de lista Hacer
		escribir  elemento, " " Sin Saltar;
	FinPara
	Escribir "";
FinFuncion

Algoritmo ordena_lista
	dimension lista_ascendente[10], lista_descendente[10], lista_original[10]
	
	para i <- 1 hasta 10  Hacer
		lista_original[i] = Aleatorio(1,10)
		lista_ascendente[i] = lista_original[i];
		lista_descendente[i] = lista_original[i];
	FinPara
	
	ascendente(lista_ascendente);
	descendente( lista_ascendente,lista_descendente);
	escribir "lista aleatoria: " Sin Saltar;
	imprimir_lista(lista_original);
	escribir "lista ordenada ascendentemente: " Sin Saltar;
	imprimir_lista(lista_ascendente);
	escribir "lista odernada descendentemente: " Sin Saltar;
	imprimir_lista(lista_descendente);
	
FinAlgoritmo
