Algoritmo PalabrasCruzadas
	Definir matriz Como Caracter
	Definir filas, columnas, i, resultadoR Como Entero
	Definir palabra como cadena
	filas <- 10
	columnas <- 11
	Dimension matriz[filas,columnas]
	// Inicializar la matriz con asteriscos
	inicializarMatriz(matriz, filas, columnas)
	// mostrar la matriz con asteriscos
	mostrarMatriz(matriz, filas, columnas)
	
	agregarPalabra(matriz, 1, "Vector")
	agregarPalabra(matriz, 2, "Matrix")
	agregarPalabra(matriz, 3, "Programa")
	agregarPalabra(matriz, 4, "Subprograma")
	agregarPalabra(matriz, 5, "Subproceso")
	agregarPalabra(matriz, 6, "Variable")
	agregarPalabra(matriz, 7, "Entero")
	agregarPalabra(matriz, 8, "Para")
	agregarPalabra(matriz, 9, "Mientras")
	// mostrar la matriz con asteriscos
	mostrarMatriz(matriz, filas, columnas)
	
FinAlgoritmo


Subproceso inicializarMatriz(matriz, filas, columnas)
	Definir i, j como entero
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			matriz[i, j] <- "*"
		FinPara
		
	FinPara
FinsubProceso

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i,j Como Entero
	para i = 0 Hasta filas - 1 Hacer
		para j = 0 Hasta columnas - 1 Hacer
			Escribir matriz[i,j] , " | " Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
finsubproceso


SubProceso agregarPalabra(matriz, filas, palabra)
	Definir j como entero
	Definir longitudPalabra Como Entero
	
	longitudPalabra <- Longitud(palabra)
	
	Para j <- 0 Hasta longitudPalabra-1
		escribir subcadena(palabra,j,j) Sin Saltar
		matriz[filas, j] <- subcadena(palabra, j, j)
		
	FinPara
	Escribir " "
FinSubproceso

Funcion bandera <- esValida(palabra, columnas)
	Definir contador Como Entero
	Definir bandera Como Logico
	
	contador = 0
	bandera = Falso
	/// Si bandera es verdador hay R en las primeras 5 posiciones, es valida
	/// Si el contador llega a 5 entonces ya no va a entrar en la matriz
	/// El contador se debe de mantener en margen
	mientras bandera == Falso Y contador <= 5 Y contador < Longitud(palabra) Y longitud(palabra)<columnas
		Si Mayusculas(Subcadena(palabra, contador, contador)) == "R"
			bandera = Verdadero
		FinSi
	FinMientras
FinFuncion

Funcion posicionR <- buscarR(matriz, filas)
	Definir posicionR Como Entero
	Definir j Como Entero
	j=0
	posicionR=-1
	Mientras posicionR==-1 y posicionR <= 5 Hacer
		Si Mayusculas(matriz(filas,j)) == "R" Entonces
			posicionR= j
		FinSi
		j=j+1
	FinMientras
FinFuncion

//	Subproceso acomodarPalabra(matriz, filas, columnas)
//		Definir i, j Como Entero
//		Para i = 0 Hasta filas - 1 Hacer        
//			buscarR(matriz, i)          
//			Para j  = 0 Hasta columnas - 1 Hacer
//				
//				matriz[i, j] <- "*"
//			FinPara
//            Para j = 0 Hasta columnas -1 Hacer				
//                Si j + 5 - resultadoR <= Longitud(matriz[i]) Entonces
//					matriz[i, j] = matriz[i, j + 5 - resultadoR]
//				FinSi
//			FinPara
//		FinPara
//FinSubproceso
SubProceso searchInMatrix(posiciones Por Referencia, char, matriz Por Referencia, m, n)
	Definir i,j Como Entero
	
	Para i=0 Hasta m - 1
		j = 0
		Repetir
			Si Mayusculas(matriz[i,j]) = 'R' Entonces
				posiciones[i] = j
				j = -1
				
			SiNo
				j = j+1
			FinSi
			Si j = n Entonces
				j = -1
			FinSi
		Mientras Que (j <> -1)
	FinPara
	Escribir 'Encontradas las posiciones'
FinSubProceso
