Algoritmo principal
    Definir matriz Como Caracter
	Definir filas, columnas, i, resultadoR Como Entero
	Definir palabra como 
    filas <- 10
    columnas <- 11
	Dimension matriz[filas,columnas]
    // Inicializar la matriz con asteriscos
    inicializarMatriz(matriz, filas, columnas)
	imprimirMatriz(matriz, filas, columnas)
	
	agregarPalabra(matriz, 1, "Vector")
    agregarPalabra(matriz, 2, "Matrix")
    agregarPalabra(matriz, 3, "Programa")
    agregarPalabra(matriz, 4, "Subprograma")
    agregarPalabra(matriz, 5, "Subproceso")
    agregarPalabra(matriz, 6, "Variable")
    agregarPalabra(matriz, 7, "Entero")
    agregarPalabra(matriz, 8, "Para")
    agregarPalabra(matriz, 9, "Mientras")
	
    // Acomodar palabras en la matriz
//    acomodarPalabra(matriz, filas, columnas)
//	
//    // Imprimir la matriz
	imprimirMatriz(matriz, filas, columnas)
//	
FinAlgoritmo

//	Subproceso buscarR(matriz, fila)
//		Definir j, resultadoR Como Entero
//		resultadoR <- -1
//		Para j = 0 Hasta Longitud(matriz[fila]) - 1 Hacer
//			Si matriz[fila, j] = "R" Entonces
//				resultadoR <- j
//			FinSi
//		FinPara
//FinSubproceso

Subproceso inicializarMatriz(matriz, filas, columnas)
	Definir i, j como entero
    Para i = 0 Hasta filas - 1 Hacer		
		
        Para j  = 0 Hasta columnas - 1 Hacer
			matriz[i, j] <- "*" 
			FinPara
		
    FinPara
	
	
FinSubproceso

Subproceso imprimirMatriz(matriz, filas, columnas)
	Definir i, j como entero

   Para i = 0 Hasta filas - 1 Hacer		
       Para j  = 0 Hasta columnas - 1 Hacer
           Escribir Sin Saltar matriz[i, j], " "
	   FinPara
       Escribir ""
   FinPara
FinSubproceso

Subproceso agregarPalabra(matriz, fila, palabra)
	Definir j como entero
	Definir longitudPalabra Como Entero
    longitudPalabra <- Longitud(palabra)
    
	Para j <- 1 Hasta longitudPalabra
		escribir j, " ", fila, palabra[0]
        matriz[fila, j] <- palabra[j]
    FinPara
FinSubproceso
//
Subproceso acomodarPalabra(matriz, filas, columnas)
   Definir i, j Como Entero
   Para i = 0 Hasta filas - 1 Hacer        
	   buscarR(matriz, i)          
	   Para j  = 0 Hasta columnas - 1 Hacer
	  
               matriz[i, j] <- "*"
           FinPara
            Para j = 0 Hasta columnas -1 Hacer				
                Si j + 5 - resultadoR <= Longitud(matriz[i]) Entonces
                   matriz[i, j] = matriz[i, j + 5 - resultadoR]
               FinSi
           FinPara
   FinPara
FinSubproceso
