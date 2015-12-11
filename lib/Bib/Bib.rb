class Biblio
    #Clase Padre
    attr_accessor :autores, :titulo, :fecha
    include Comparable
        
    def initialize(autores, titulo, fecha)
        @autores = autoresinvert(autores)
        @titulo = titulo
        @fecha = fecha
    end
    
    def get_autores() 
        return @autores
    end
    def get_titulo() 
        return @titulo          
    end
    def get_fecha() 
        return @fecha
    end
end

 # METODO COMPARABLE a partir de fecha
    def <=>(other)
        if other.is_a? Biblio
          @fecha <=> other.fecha
        else
          false
        end
    end
    
    def autoresinvert(autores) 
        arrayautores = "" 
        autores.each do |word| 
          	palabra = word.split(/\W+/) 
          	arrayautores += palabra[1] 
          	arrayautores += ", " 
          	arrayautores += palabra[0][0] 
          	arrayautores += "." 
          	    unless word == autores.last 
          		    arrayautores += " & " 
          		end
    		end		
    		return arrayautores 
	end
    #Clases Hijas en la Herencia
    class Libros < Biblio
        attr_accessor :editorial, :isbn
        def initialize(autores, titulo, fecha, editorial, isbn) 
            super(autores, titulo, fecha)
            @editorial = editorial
            @isbn = isbn
        end
        def to_s 
            atributoslibro = "" 
            atributoslibro << @autores << ", " << @titulo << " (" << @fecha << "), "  << @editorial << "." <<" (" << @isbn << ")."
        end    
        
    end
        
     

    
    class Articulosweb < Biblio 
        attr_accessor :url
        def initialize(autores, titulo, fecha, url) 
            super(autores, titulo, fecha)
            @url = url
        end
        
        def to_s 
            atributoslibro = "" 
            atributoslibro << @autores << ", " << @titulo << " (" << @fecha << "), "  << @url 
        end
    end
    
    class Periodicos < Biblio 
        attr_accessor :newspaper
        def initialize(autores, titulo, fecha, newspaper) 
            super(autores, titulo, fecha)
            @newspaper = newspaper
        end
        def to_s 
            atributoslibro = "" 
            atributoslibro << @autores << ", " << @titulo << " (" << @fecha << "), "  << @newspaper 
        end
    end
    
    class Revistas < Biblio
        attr_accessor :magazine, :issn
        def initialize(autores, titulo, fecha, magazine, issn)
            @magazine = magazine
            @issn = issn
        end
    end
            
    

