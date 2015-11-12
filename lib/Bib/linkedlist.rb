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
end