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
      
end