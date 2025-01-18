% Valores que se pueden usar en el Sudoku
valido([1, 2]).

% Verifica si una fila es valida
% (los números no se repiten y están en los valores validos)
fila_correcta(F) :-
    valido(V),          % Usa los valores validos
    all_different(F),   % Revisa que los numeros no se repitan
    subset(F, V).       % Verifica que los numeros esten en la lista de validos

% Verifica que todos los números en una lista sean diferentes
all_different([]). % una lista vacía no tiene números repetidos
all_different([H|T]) :- 
    \+ member(H, T),    % El primer número no está en el resto de la lista
    all_different(T).   % Verifica el resto de la lista

% Reglas para resolver el Sudoku
sudoku_2x2([[A1, A2], 
            [B1, B2]]) :-
    valido(V),  

    % Pone numeros validos en cada celda
    member(A1, V), member(A2, V),
    member(B1, V), member(B2, V),

    % Las filas deben tener numeros diferentes
    all_different([A1, A2]),
    all_different([B1, B2]),

    % Las columnas también deben tener numeros diferentes
    all_different([A1, B1]),
    all_different([A2, B2]).

% Imprime el Sudoku
imprimir_sudoku([[A1, A2], 
                 [B1, B2]]) :-
    write('---'), nl,       
    write(A1), write(' '), write(A2), nl, % Imprime la primera fila
    write(B1), write(' '), write(B2), nl, % Imprime la segunda
    write('---'), nl.       

% Encuentra y muestra todas las soluciones que hay
sudoku :-
    sudoku_2x2(Sudoku),   
    imprimir_sudoku(Sudoku),  % muestra la solucion 
    fail.                     % Busca mas soluciones
sudoku :-                     % Cuando no hay mas soluciones
    write('No hay mas soluciones.'), nl. % Muestra este mensaje