Nodostruct = Struct.new(:prev, :value, :next) 
class Double_List
    attr_accessor :head, :tail
    #Constructor
    def initialize(head, tail)   
        @head = head 
        @tail = tail 
    end
    
    #Metodo Lista vacia
    def empty? 
        @head == nil
    end
    
    #Metodo insertar
    def insert(item) 
        @nodo = Nodostruct.new(nil,item,nil)
        @nodo.next = @head 
        @nodo.prev = nil
        if @tail == nil 
            @tail = @nodo 
        else 
            @head.prev = @nodo
        end
        @head = @nodo 
    end
      
end