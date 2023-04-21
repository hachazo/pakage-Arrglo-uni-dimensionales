--Cuerpo de un paquete generico - parte oculta
With Ada.Text_Io; use ada.Text_IO;
package body Vecgenerico is -- body, especificacion e implementacion
   
   procedure Leer (Vec: out Tipovec) is
   
   begin
      
   for i in vec'range loop
      
	  new_line;
	  Put("Ingrese el elemento " & Integer'image(indice'pos(i)) & " del vector:");
         new_line;
	  Get (Vec (I));
      new_line;
      end loop;
      
   end Leer;

procedure Imprimir (Vec: in Tipovec) is

begin
  
   for I in vec'range loop
      
	   new_line;
	 Put("El elemento " & Integer'Image(indice'pos(i)) & " del vector es:");
	     new_line;
	  Put (Vec (I));
   new_line;
   end loop;
   
end Imprimir;

--//////////////////ORDENAR////////////////--
procedure ordenar(Vec: in out Tipovec) is
   
   Temp: Tipodato;
   --N: constant Integer:=Vec'Length;
   Cambio: Boolean := True;
   Tope: Indice;
   
begin
   tope:= indice'last;
   
   while Cambio loop
      
      cambio:= False;
      
      for I in indice'First .. indice'pred(tope) loop --ORDENA EL PRIMER VECTOR
      
         if Vec(I) > vec(indice'succ(I)) then
         
         Temp := Vec(I);
         
         Vec(I) := Vec(indice'succ(i));
         
         Vec(indice'succ(i)) := Temp;
         
         cambio:= True;
      end if;
      
      end loop;  
   end loop;

end Ordenar;

--////////////////////COMPARAR/////////////////--
function Compare(Vec,vec1: Tipovec) return boolean is
 
 temp,temp1:tipodato:=nulo;

begin
 
   for I in Vec'range loop
      
      Temp:= Temp + Vec(I);
      
   end loop;
   
   for I in Vec1'range loop
      
      Temp1:=Temp1+Vec1(I);
      
   end loop;
   
   return Raiz(Temp) > Raiz(Temp1);
   
end Compare;

--////////////////////BUSCAR/////////////////--
function Busqueda(Vec: Tipovec; Dato: Tipodato) return Integer is
   
   Cont:Integer;
   
   Encontro: Boolean;
   
begin
   
   Cont:=0;
   
   Encontro:=False;
   
   for I in Vec'range loop
      
      Cont:=Cont+1;
      
      if Vec(I)=Dato then
         
         Encontro:=True;
         
         return Cont;
         
      end if;
      
   end loop;
   
   if Encontro=False then
      
      Cont:=0;
      
      return Cont;
      
   end if;
   
   end busqueda;

end vecGenerico;
