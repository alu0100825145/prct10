Nodostruct = Struct.new(:valor, :siguiente)

class Lista
   def initialize(nodo)
       @inicio = Nodostruct(nodo)
   end
end