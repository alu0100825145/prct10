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

#Pruebas Listas 

describe "Pruebas para Listas" do
    before :each do
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Declaración de nodos" do
        it "Existe un nodo con su previo, su valor y su siguiente" do
            @nodo = Nodostruct.new(nil,1,nil)
            expect(@nodo.prev).to eq(nil)
            expect(@nodo.value).to eq(1)
            expect(@nodo.next).to eq(nil)
        end
    end
    describe "Pruebas Listas" do
        it "Existe una lista y está vacía" do
            expect(@doublelist.empty?).to eq(true)
        end
    end
end