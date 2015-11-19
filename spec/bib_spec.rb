require "spec_helper"
require "Bib"

#Clase Padre

describe Biblio do
    before :each do
        @libro = Libros.new("CATEDRA", "ISBN: 9780828825115")
        @articuloweb = Articulosweb.new("www.dejensever.com/2015/11/08/las-cuevecitas-fs-vs-cfs-chinguaro-en-imagenes/")
        @periodico = Periodicos.new("ElDia")
        @revista = Revistas.new("Hola","ISSN 0214-3895")
    end
    
    #Clases de la herencia
    describe "Clases de la Herencia de Biblio" do
        it "Libros" do
            expect(@libro.is_a? Libros).to eq(true)
            expect(@libro.kind_of? Biblio).to eq(true)
        end 
        it "Articulos Web" do
            expect(@articuloweb.is_a? Articulosweb).to eq(true)
            expect(@articuloweb.kind_of? Biblio).to eq(true)
        end
        it "Periodicos" do
            expect(@periodico.is_a? Periodicos).to eq(true)
            expect(@periodico.kind_of? Biblio).to eq(true)
        end
        it "Revistas" do
            expect(@revista.is_a? Revistas).to eq(true)
            expect(@revista.kind_of? Biblio).to eq(true)
        end
    end
    

end
