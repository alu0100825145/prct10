Nodostruct = Struct.new(:valor, :siguiente)

class Lista
   def initialize(nodo)
       @inicio = Nodostruct.new(nil)
   end
   
   def push(nodo)
        if @inicio != nil
            nodo.siguiente = @inicio
            @inicio = nodo
        end        
   end
   
   def ext 
        aux = @inicio
        @inicio = @inicio.siguiente
        aux.valor
   end  
   
   def inicio
        @inicio
   end    
end