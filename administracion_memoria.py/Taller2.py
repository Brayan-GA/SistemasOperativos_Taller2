import math

# Datos del problema
memoria_total = 1024

procesos = {
    "P1": 120,
    "P2": 250,
    "P3": 80,
    "P4": 300,
    "P5": 150,
    "P6": 200
}

# ====================================
# PARTE A - ADMINISTRACION DE MEMORIA
# ====================================

print("=" * 40)
print("PARTE A - ADMINISTRACION DE MEMORIA")
print("=" * 40)

memoria_usada = (
    procesos["P1"]
    + procesos["P2"]
    + procesos["P3"]
    + procesos["P4"]
    + procesos["P5"]
)

memoria_libre = memoria_total - memoria_usada

print(f"Memoria Total: {memoria_total} MB")
print("Procesos cargados:")

for proceso in ["P1", "P2", "P3", "P4", "P5"]:
    print(f"{proceso} = {procesos[proceso]} MB")

print(f"Memoria utilizada: {memoria_usada} MB")
print(f"Memoria disponible: {memoria_libre} MB")

if procesos["P6"] <= memoria_libre:
    print("P6 puede cargarse")
else:
    print("P6 NO puede cargarse")

# ====================================
# PARTE B - ASIGNACION CONTIGUA
# ====================================

print("\n" + "=" * 40)
print("PARTE B - ASIGNACION CONTIGUA")
print("=" * 40)

print("| P1 | P2 | P3 | P4 | P5 | Espacio Libre |")

print(f"Memoria utilizada: {memoria_usada} MB")
print(f"Memoria libre: {memoria_libre} MB")

if procesos["P6"] <= memoria_libre:
    print("P6 puede cargarse")
else:
    print("P6 NO puede cargarse")

# ====================================
# PARTE C - PAGINACION
# ====================================

print("\n" + "=" * 40)
print("PARTE C - PAGINACION")
print("=" * 40)

tam_pagina = 50

print(f"Tamaño de página: {tam_pagina} MB")

for nombre, tamano in procesos.items():
    paginas = math.ceil(tamano / tam_pagina)
    print(f"{nombre} -> {paginas} páginas")

# ====================================
# PARTE D - SEGMENTACION
# ====================================

print("\n" + "=" * 40)
print("PARTE D - SEGMENTACION")
print("=" * 40)

codigo = 60
datos = 40
pila = 20

total = codigo + datos + pila

print("Proceso: P1")
print(f"Código: {codigo} MB")
print(f"Datos: {datos} MB")
print(f"Pila: {pila} MB")
print(f"Total: {total} MB")