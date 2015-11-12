Nodostruct = Struct.new(:valor, :siguiente)

class Lista
   def initialize(nodo)
       @inicio = Nodostruct.new(nil)
   end
end