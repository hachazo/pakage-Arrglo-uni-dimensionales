--Especificacion de un paquete generico
--parte visibl=- \
generic
   type Tipodato is private;
   type Indice is (<>); -- Lo defino la dimension en el programa principal
   with procedure Put (X: in tipodato); -- with define que se va a usar en el paquete
   with procedure Get (X: out tipodato); -- en este caso un procedimiento
   with function Raiz (X: tipodato) return float;
   with function ">" (X,Y: Tipodato) return Boolean;
   with function "+" (X,Y: tipodato) return tipodato;
   -- cambio:= True;
   Nulo:Tipodato;
   elemento:tipodato;
   package Vecgenerico is
      type Tipovec is array (indice) of tipodato; --definimos lo que va a tener la parte oculta
      procedure Leer (Vec: out Tipovec); -- definimos los modulos que tiene la parte oculta
      procedure Imprimir (Vec: in Tipovec);
      procedure Ordenar(Vec: in out Tipovec);
      function Compare(Vec,Vec1: in Tipovec) return Boolean;
      function Busqueda(Vec: Tipovec; Dato: Tipodato) return Integer; --devielve el valor de la poscicon o un "0" si no se encuentra.
      end Vecgenerico;
-- procedure putInteger (x: in integer) is //leer vector
-- begin
-- Put (X);
--end Putinteger;
--procedure Getinteger (X: out Integer) is //Imprimir vector
--begin
--Get(X);
--end Getinteger;
--function Raiz (X: integer) return float is
--begin
--return sqrt(float(x));
--end Raiz;

--package Vecint is new Vecgenerico(integer,Rango, putInteger, getInteger,Raiz,">","+",0,elemento);
--   use vecInt;
--   V,E:Tipovec;