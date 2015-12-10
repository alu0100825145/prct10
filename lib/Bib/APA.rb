require './lib/Bib/linkedlist.rb'
class APAref 
    include Enumerable
        
    def initialize() 
		@list = Double_List.new(nil,nil)
    end
		
	def insertref(ref) 
		@list.insert(ref)
	end    
end