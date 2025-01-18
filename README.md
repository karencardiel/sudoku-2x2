# Sudoku 2x2

Este proyecto implementa un solucionador de Sudoku 2x2 en Prolog. El objetivo principal es resolver un Sudoku 2x2, asegurando que las reglas del juego se cumplan: cada número en las filas y columnas debe ser único.

## Descripción del proyecto

El programa incluye las siguientes funcionalidades:

1. **Definición de números válidos:** Los números permitidos son 1 y 2.
2. **Validación de filas:** Verifica que los números en una fila sean diferentes y pertenezcan al conjunto válido.
3. **Validación de celdas:** Representa las filas del Sudoku como `[[A1, A2], [B1, B2]]`, donde `A1`, `A2`, `B1`, y `B2` son las celdas de la cuadrícula.
4. **Generación de Sudokus válidos:** Asigna números válidos a cada celda del Sudoku.
5. **Impresión del Sudoku:** Muestra el Sudoku en un formato legible.
6. **Búsqueda de soluciones:** Encuentra y muestra todas las soluciones válidas para un Sudoku 2x2.

## Cómo usarlo

### Requisitos

- [SWI-Prolog](https://www.swi-prolog.org) versión 9.2.8 o superior.

### Ejecución

1. Clona este repositorio:

   ```bash
   git clone https://github.com/tuusuario/sudoku-2x2-solver.git
   cd sudoku-2x2-solver
   ```

2. Abre SWI-Prolog en la terminal:

   ```bash
   swipl
   ```

3. Carga el archivo del programa:

   ```prolog
   ?- consult('sudoku.pl').
   ```

4. Realiza consultas como las siguientes:

   - Validar una fila:
     ```prolog
     ?- fila_correcta([1, 2]).
     ```
   - Verificar una cuadrícula específica:
     ```prolog
     ?- sudoku_2x2([[1, 2], [2, 1]]).
     ```
   - Generar un Sudoku válido:
     ```prolog
     ?- sudoku_2x2(Sudoku).
     ```
   - Encontrar todas las soluciones:
     ```prolog
     ?- sudoku.
     ```

## Ejemplo de salida

Para la consulta `?- sudoku.`:

```
---
1 2
2 1
---
---
2 1
1 2
---
No hay más soluciones.
```

## Créditos

- **Karen Cardiel Olea**
- **Elisabet Arelly Sulú Vela**
- Profesor: **Ernesto Manuel Ihuit Dzib**
- Universidad Politécnica de Yucatán
- Asignatura: Paradigmas de Programación

## Fecha de entrega

24 de noviembre de 2024

---

**Nota:** Este programa fue desarrollado como parte de un proyecto académico. ¡Esperamos que sea útil para aprender más sobre Prolog y resolver Sudokus pequeños!
