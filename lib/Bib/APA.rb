require './lib/Bib/linkedlist.rb'
class APAref 
    include Enumerable
        
    def initialize() 
		@list = Double_List.new(nil,nil)
    end
		
	def insertref(ref) 
		@list.insert(ref)
	end  
	def to_s
		cadena = ""
		@list.each do |ref|
			cadena << ref.to_s
		end
		return cadena
	end
		
	def each 
		@list.each
	end
end