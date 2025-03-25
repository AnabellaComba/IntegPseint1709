Algoritmo actividad_integradora_matrices
	Definir m, n, posiciones, longitudes Como Entero
	Definir matriz Como Cadena
	m = 3 // Filas
	n = 10 // Columnas
	Dimension matriz(m,n)
	Dimension posiciones(m)
	Dimension longitudes(m)
	initVector(posiciones,m)
	initMatrix(matriz,m,n)
	fillMat(matriz, longitudes,m,n)
	searchInMatrix(posiciones,'R',matriz,m,n)
	moveWords(matriz, posiciones, longitudes, m, n)
	Muestra(matriz,m,n)
FinAlgoritmo

Funcion posible <- validador(posiciones Por Referencia, longitudes Por Referencia,m,n)
	Definir i Como Entero
	Definir posible Como Logico
	posible = Verdadero
	
	Para i = 0 Hasta m
		Si 5-posiciones[i] + longitudes[i]>n Entonces
			posible = Falso
		FinSi
	FinPara
FinFuncion


SubProceso muestraVec(vector,fila Por Valor)
	Definir i,j Como Entero
	
	Para i=0 Hasta fila -1
		Escribir vector(i) Sin Saltar
		Escribir ""
	FinPara
FinSubProceso

SubProceso Muestra(matriz,fila Por Valor,columna Por Valor)
	Definir i,j Como Entero
	
	Para i=0 Hasta fila -1
		Para j=0 Hasta columna-1
			Escribir matriz(i,j) Sin Saltar
			Si j <> columna-1 Entonces
				Escribir Sin Saltar '|'
			FinSi
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso


SubProceso initVector(vector Por Referencia, m)
	Definir i Como Entero
	
	Para i=0 Hasta m - 1
		vector[i] = -1
	FinPara
	Escribir 'Se ha inicializado el vector'
FinSubProceso

SubProceso initMatrix(matriz Por Referencia, m, n)
	Definir i,j Como Entero
	
	Para i=0 Hasta m - 1
		Para j=0 Hasta n-1
			matriz[i,j] = '*'
		FinPara
	FinPara
	Escribir 'Se ha inicializado la matriz'
FinSubProceso


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



SubProceso fillMat(matriz Por Referencia, longitudes Por Referencia, m, n)
	Definir i,j Como Entero
	Definir pal Como Cadena
	
	Para i=0 Hasta m - 1
		
		Repetir
			Escribir 'Introduce la palabra que irá en el reglón ', i+1
			Leer pal
		Mientras Que Longitud(pal)>n
		longitudes[i] = Longitud(pal)
		j = 0
		Repetir
			matriz[i,j] = Subcadena(pal,j,j)
			j=j+1
		Mientras Que (j <= Longitud(pal)-1)
	FinPara
	Escribir 'Se ha llenado la matriz'
FinSubProceso


SubProceso moveWords(matriz Por Referencia, posiciones Por Referencia,longitudes Por Referencia, m,n)
	Definir i,j Como Entero
	
	Para i=0 Hasta m - 1
		Si posiciones[i]<5 Entonces
			Para j = longitudes[i] Hasta 0
				matriz[i,j+(5-posiciones[i])] = matriz[i,j]
				matriz[i,j] = '*'
			FinPara
		SiNo
			Si posiciones[i]>5 Entonces
				Escribir 'No se puede desplazar la palabra hacia la derecha'
			FinSi
		FinSi
		
	FinPara
FinSubProceso