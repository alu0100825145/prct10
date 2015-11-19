require "spec_helper"
require "Bib"

#Clase Padre

describe Biblio do
    before :each do
         @libro = Libros.new("CATEDRA", "ISBN: 9780828825115")
        
    end
    
    #Clases de la herencia
    describe "Clases de la Herencia de Biblio" do
        it "Libros" do
            expect(@libro.is_a? Libros).to eq(true)
            expect(@libro.kind_of? Biblio).to eq(true)
        end 

    end
    

end
