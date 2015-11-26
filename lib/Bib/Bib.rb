class Biblio
    #Clase Padre
    attr_accessor :autores, :titulo, :fecha
    include Comparable
        
    def initialize(autores, titulo, fecha)
        @autores = autores
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
    
    #Clases Hijas en la Herencia
    class Libros < Biblio
        attr_accessor :editorial, :isbn
        def initialize(editorial, isbn) 
            @editorial = editorial
            @isbn = isbn
        end
    end
    
    class Articulosweb < Biblio 
        attr_accessor :url
        def initialize(url) 
            @url = url
        end
    end
    
    class Periodicos < Biblio 
        attr_accessor :newspaper
        def initialize(newspaper) 
            @newspaper = newspaper
        end
    end
    
    class Revistas < Biblio
        attr_accessor :magazine, :issn
        def initialize(magazine, issn)
            @magazine = magazine
            @issn = issn
        end
    end
            
    

