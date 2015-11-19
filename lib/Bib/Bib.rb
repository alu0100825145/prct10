class Biblio
    #Clase Padre
    attr_accessor :autores, :titulo, :fecha
        
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
    
    #Clases Hijas en la Herencia
    class Libros < Biblio
        attr_accessor :editorial, :isbn
        def initialize(editorial, isbn) 
          @editorial = editorial
          @isbn = isbn
        end
    end
    

