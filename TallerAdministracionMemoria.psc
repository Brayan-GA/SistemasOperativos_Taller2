Proceso TallerAdministracionMemoria
	
    Definir MemoriaTotal, MemoriaUsada, MemoriaLibre Como Entero;
    Definir P1, P2, P3, P4, P5, P6 Como Entero;
    Definir TamPagina Como Entero;
    Definir PagP1, PagP2, PagP3, PagP4, PagP5, PagP6 Como Entero;
    Definir Codigo, Datos, Pila, Total Como Entero;
	
    MemoriaTotal <- 1024;
	
    P1 <- 120;
    P2 <- 250;
    P3 <- 80;
    P4 <- 300;
    P5 <- 150;
    P6 <- 200;
	
    Escribir "====================================";
    Escribir "PARTE A - ADMINISTRACION DE MEMORIA";
    Escribir "====================================";
	
    MemoriaUsada <- P1 + P2 + P3 + P4 + P5;
    MemoriaLibre <- MemoriaTotal - MemoriaUsada;
	
    Escribir "Memoria Total: ", MemoriaTotal, " MB";
    Escribir "Procesos cargados:";
    Escribir "P1 = ", P1, " MB";
    Escribir "P2 = ", P2, " MB";
    Escribir "P3 = ", P3, " MB";
    Escribir "P4 = ", P4, " MB";
    Escribir "P5 = ", P5, " MB";
	
    Escribir "Memoria utilizada: ", MemoriaUsada, " MB";
    Escribir "Memoria disponible: ", MemoriaLibre, " MB";
	
    Si P6 <= MemoriaLibre Entonces
        Escribir "P6 puede cargarse.";
    Sino
        Escribir "P6 NO puede cargarse.";
    FinSi;
	
    Escribir "";
    Escribir "====================================";
    Escribir "PARTE B - ASIGNACION CONTIGUA";
    Escribir "====================================";
	
    Escribir "| P1 | P2 | P3 | P4 | P5 | Espacio Libre |";
    Escribir "Memoria utilizada: ", MemoriaUsada, " MB";
    Escribir "Memoria libre: ", MemoriaLibre, " MB";
	
    Si P6 <= MemoriaLibre Entonces
        Escribir "P6 puede cargarse.";
    Sino
        Escribir "P6 NO puede cargarse.";
    FinSi;
	
    Escribir "";
    Escribir "====================================";
    Escribir "PARTE C - PAGINACION";
    Escribir "====================================";
	
    TamPagina <- 50;
	
    PagP1 <- Trunc((P1 + TamPagina - 1) / TamPagina);
    PagP2 <- Trunc((P2 + TamPagina - 1) / TamPagina);
    PagP3 <- Trunc((P3 + TamPagina - 1) / TamPagina);
    PagP4 <- Trunc((P4 + TamPagina - 1) / TamPagina);
    PagP5 <- Trunc((P5 + TamPagina - 1) / TamPagina);
    PagP6 <- Trunc((P6 + TamPagina - 1) / TamPagina);
	
    Escribir "Tamano de pagina: ", TamPagina, " MB";
    Escribir "P1 -> ", PagP1, " paginas";
    Escribir "P2 -> ", PagP2, " paginas";
    Escribir "P3 -> ", PagP3, " paginas";
    Escribir "P4 -> ", PagP4, " paginas";
    Escribir "P5 -> ", PagP5, " paginas";
    Escribir "P6 -> ", PagP6, " paginas";
	
    Escribir "";
    Escribir "====================================";
    Escribir "PARTE D - SEGMENTACION";
    Escribir "====================================";
	
    Codigo <- 60;
    Datos <- 40;
    Pila <- 20;
	
    Total <- Codigo + Datos + Pila;
	
    Escribir "Proceso: P1";
    Escribir "Codigo: ", Codigo, " MB";
    Escribir "Datos: ", Datos, " MB";
    Escribir "Pila: ", Pila, " MB";
    Escribir "Total: ", Total, " MB";
	
FinProceso