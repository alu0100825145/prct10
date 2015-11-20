Nodostruct = Struct.new(:prev, :value, :next) 
class Double_List
    attr_accessor :head, :tail
    def initialize(head, tail)   
        @head = head 
        @tail = tail 
    end
end