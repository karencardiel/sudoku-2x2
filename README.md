# 🧩 2x2 Sudoku Solver

This project implements a 2x2 Sudoku solver in Prolog. The main objective is to solve a 2x2 Sudoku while ensuring that the game rules are met: each number in rows and columns must be unique.

## 📋 Project Description

The program includes the following functionalities:

1. **Valid numbers definition:** The allowed numbers are 1 and 2.
2. **Row validation:** Verifies that numbers in a row are different and belong to the valid set.
3. **Cell validation:** Represents Sudoku rows as `[[A1, A2], [B1, B2]]`, where `A1`, `A2`, `B1`, and `B2` are the grid cells.
4. **Valid Sudoku generation:** Assigns valid numbers to each Sudoku cell.
5. **Sudoku printing:** Displays the Sudoku in a readable format.
6. **Solution search:** Finds and displays all valid solutions for a 2x2 Sudoku.

## 🚀 How to Use

### Requirements
- [SWI-Prolog](https://www.swi-prolog.org) version 9.2.8 or higher.

### Execution
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/sudoku-2x2-solver.git
   cd sudoku-2x2-solver
   ```

2. Open SWI-Prolog in the terminal:
   ```bash
   swipl
   ```

3. Load the program file:
   ```prolog
   ?- consult('sudoku.pl').
   ```

4. Make queries like the following:
   - Validate a row:
     ```prolog
     ?- fila_correcta([1, 2]).
     ```
   - Verify a specific grid:
     ```prolog
     ?- sudoku_2x2([[1, 2], [2, 1]]).
     ```
   - Generate a valid Sudoku:
     ```prolog
     ?- sudoku_2x2(Sudoku).
     ```
   - Find all solutions:
     ```prolog
     ?- sudoku.
     ```

## 📊 Example Output

For the query `?- sudoku.`:
```
---
1 2
2 1
---
---
2 1
1 2
---
No more solutions.
```

## 📂 File Structure
```
project/
├── 🧩 sudoku.pl
├── 📓 examples.pl
└── 📖 README.md
```

## 👥 Credits

- **Karen Cardiel Olea**
- **Elisabet Arelly Sulú Vela**
- Professor: **Ernesto Manuel Ihuit Dzib**
- Universidad Politécnica de Yucatán (Polytechnic University of Yucatan)
- Subject: Programming Paradigms

## 📅 Submission Date

November 24, 2024

---

**Note:** This program was developed as part of an academic project. We hope it's useful for learning more about Prolog and solving small Sudokus! 🎓

⭐ **Star this repository if you find it helpful!**
