
%PREDICADO - hecho con su respectiva aridad
% ciente/3

%CLAUSULAS - cantidad de hechos que representan al predicado
% 6 clausulas del predicado cliente

%cliente(nombre, ciudad, calificacion-credito)

cliente(claudia, nochistlan, 5).
cliente(deysi, jerez, 4).
cliente(luis, jerez, 2).
cliente(luis_gerardo, ermita_guadalupe, 3).
cliente(gerardo, jerez, 4).
cliente(david, zacatecas, 2).

%articulo(clave, descripcion, limite_existencias)

articulos(a1, computadora, 10).
articulos(a2, raton_alambrico, 10).
articulos(a3, proyector, 10).
articulos(a4, adaptador_vga, 10).
articulos(a5, raton_inalambrico, 10).
articulos(a6, memoria_usb, 10).
articulos(a7, disco_externo, 10).

% inventario(clave, existencias)

inventario(a1, 32).
inventario(a2, 4).
inventario(a3, 5).
inventario(a4, 64).
inventario(a5, 12).
inventario(a6, 10).
inventario(a7, 89).

%Crear una regla que muestre a los clientes de Jerez

cliente_jerez(Nombre, Lugar) :- cliente(Nombre, jerez, _).
%:-cliente_jerez(Nombre, Lugar).
%Nombre = deysi :-;
%Nombre = luis |;
%Nombre = gerardo.

%=======================================================================================================================
%mostrar los clientes con calificacion de 5

cliente_cal(N, L, C) :- cliente(N, L, 5).
%:-cliente_cal(N, L, C).
%N = claudia,
%L = nochistlan.

%=======================================================================================================================
%mostrar un listado con el nombre del producto y su existencia

producto(N, E) :- articulos(C, N, _) , inventario(C, E).
%:-producto(N, E).
%N = computadora,
%E = 32 :-;
%N = raton_alambrico,
%E = 4 |;
%N = proyector,
%E = 5 |;
%N = adaptador_vga,
%E = 64 |;
%N = raton_inalambrico,
%E = 12 |;
%N = memoria_usb,
%E = 10 |;
%N = disco_externo,
%E = 89.

%=======================================================================================================================
%Encontrar clientes en una ciudad dada con una calificacion de creidto determinada

cliente_cal_ciudad(N, L, C) :- cliente(N, jerez, 4).
%:-cliente_cal_ciudad(N, L, C).
%N = deysi :-;
%N = gerardo.


%=======================================================================================================================
%Encuentra la cantidad de limite en existncia para un dado articulo
limite_existencia(A, L) :- articulos(_, A, L). 
%:-limite_existencia(A, L).
%A = computadora,
%L = 10 :-;
%A = raton_alambrico,
%L = 10 |;
%A = proyector,
%L = 10 |;
%A = adaptador_vga,
%L = 10 |;
%A = raton_inalambrico,
%L = 10 |;
%A = memoria_usb,
%L = 10 |;
%A = disco_externo,
%L = 10.

%=======================================================================================================================
%Encuentra el numero de articulos para el nombre de un articulo determinado
num_art(A, N) :- articulos(A, computadora, _).
%:-num_art(A, N).
%A = a1.

%=======================================================================================================================
%Encuentra el nivel de inventario para un numero articulo dado
niv_inventario(C, N, E) :- articulos(a3, N, _) , inventario(a3, E).
%:-niv_inventario(C, N, E).
%N = proyector,
%E = 5.

%=======================================================================================================================
%Crea una regla que ayude a mostrar la cantidad de articulos que hay para cada articulo
art_nom(C, N, E) :- articulos(C, N, _) , inventario(C, E).
%:-art_nom(C, N, E).
%C = a1,
%N = computadora,
%E = 32 :-;
%C = a2,
%N = raton_alambrico,
%E = 4 |;
%C = a3,
%N = proyector,
%E = 5 |;
%C = a4,
%N = adaptador_vga,
%E = 64 |;
%C = a5,
%N = raton_inalambrico,
%E = 12 |;
%C = a6,
%N = memoria_usb,
%E = 10 |;
%C = a7,
%N = disco_externo,
%E = 89.