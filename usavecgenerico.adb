with Ada.integer_Text_IO, ada.Numerics.Elementary_Functions, vecGenerico,ada.Text_IO; use
Ada.integer_Text_IO,ada.Numerics.Elementary_Functions,ada.Text_IO;
procedure usaVecGenerico is
   subtype Rango is Integer range 1..5;
   
   procedure putInteger (x: in integer) is
   begin
      Put (X);
   end Putinteger;
   
   procedure Getinteger (X: out Integer) is
   begin
      Get(X);
   end Getinteger;
   
   function Raiz (X: integer) return float is
   begin
      return sqrt(float(x));
   end Raiz;

   Elemento: Integer;
   
   package Vecint is new Vecgenerico(integer,Rango, putInteger, getInteger,Raiz,">","+",0,elemento);
   use vecInt;
   V,E:Tipovec;
   
      procedure Programa_Prin(X,Y: in out Tipovec; elemento: out integer) is
      Option,temp:Integer;
 
      begin
         
         Put_Line("------------------------------");
         Put_Line("Programa con uso de paquetes");
         Put_Line("------------------------------");
         New_Line;
         Put_Line("Ingrese los valores del vector 1:");
         Leer(V);
         new_line;
         Put_Line("Ingrese los valores del vector2:");
         leer(e);
        
         while Option/=5 loop
            
         New_Line;
         Put_Line("--------------------------------------");
         Put_Line("Seleccione la la operacion a ejecutar:");
         Put_Line("--------------------------------------");
         new_line;
         Put_Line("1. Comparar vectores");
         Put_Line("2. Ordenar los vectores");
         Put_Line("3. Imprimir vectores");
         put_line("4. Buscar un elemento");
         put_line("5. Salir del programa");
         
         Get(option);
            New_Line;
            
            case Option is
               
               when 1 => 
                  if Compare(x,y) then
                  Put_Line("El vector 1 es mayor que el vector 2"); 
                  else
                  Put_Line("El vector 1 es menor que el vector 2");  
                  end if;
                  
                When 2 =>  
                  Ordenar(x);
                  new_line;
                  Ordenar(y);
                  
                when 3 => Imprimir(x); new_line;
                  Imprimir(y);
               
                when 4 => 
                  new_line;
                  Put_Line("Ingrese el elemento a buscar:");
                  Get(Elemento);
                  Temp:=Busqueda(x,Elemento);
                  if Temp /=0 then
                     New_Line;
                     Put_line("El elemento se encontro en el vector 1 en la la posicion: " & integer'image(temp));
                  else
                     new_line;
                     Temp:=Busqueda(y,Elemento);
                     if Temp /= 0 then
                        new_line;
                       Put_line("El elemento se encontro en el vector 2 en la la posicion: " & integer'image(temp));
                     else
                        new_line;
                       Put_Line("El elemento no encontrado!"); 
                     end if;
                  end if;
               
               when 5 =>
               put_line(" ");
                  
         when others => put_line("Opcion invalida");
         end case;
         end loop;
         
      end Programa_Prin;
   
   begin
      
   Programa_Prin(V,e,elemento);
   
      end usaVecGenerico;
