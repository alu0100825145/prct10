require "spec_helper"
require "Bib"


#Pruebas Comparable

describe Biblio do
    before :all do
       @libro = Libros.new(["Javi Agache","Pepe Cangrejo"], "Historias Uruguay", "2014", "Dejensever", "44")
       @articuloweb = Articulosweb.new(["Javi Agache","Mat Layton"], "Galería De Imagenes", "2015", "http://dejensever.com/2015/11/29/gomera-fs-vs-iberia-toscal/")
       @revista = Revistas.new(["Dani Kome","Sergio Aragoneses"], "Imagenes De Un Ascenso", "2009", "Instagram", "899")
       @periodico = Periodicos.new(["Javi Agache", "Yeray ElArrugado"], "Permanencia", "2016", "Miopinion")
    end

    it "prueba insertar referencias en la lista" do
        @aparef = APAref.new()
        @aparef.insertref(@libro)
        @aparef.insertref(@articuloweb)
        @aparef.insertref(@revista)
        @aparef.insertref(@periodico)
    end
    
    it "prueba libros" do
        @aparef = APAref.new()
        @aparef.insertref(@libro)
        expect(@aparef.to_s).to eq("Agache, J. & Cangrejo, P., Historias Uruguay (2014), Dejensever. (44).")
    end

    it "prueba articulos web" do
        @aparef = APAref.new()
        @aparef.insertref(@articuloweb)
        expect(@aparef.to_s).to eq("Agache, J. & Layton, M., Galería De Imagenes (2015), http://dejensever.com/2015/11/29/gomera-fs-vs-iberia-toscal/")
    end
end

=begin  
    describe "Comparaciones teniendo en cuenta la fecha" do
        before :each do
          @biblio1 = Biblio.new("Miguel Cervantes","El Quijote","1605")
          @biblio2 = Biblio.new("Lope de Vega", "La Prueba de los amigos", "1604")
          @biblio3 = Biblio.new("William Shakespeare", "Romeo y Julieta", "1595")
        end  
        
        it "La referencia de Romeo y Julieta es menor que la de Otelo" do
          expect(@biblio3 < @biblio).to eq(true)
        end
        it "La referencia de La prueba de los amigos es menor o igual que la de Otelo" do
          expect(@biblio2 <= @biblio).to eq(true)
        end
        it "La referencia de La prueba de los amigos es igual que la de Otelo"  do
          expect(@biblio2 == @biblio).to eq(true)
        end
        it "La referencia de El Quijote es mayor o igual que la de Otelo" do
          expect(@biblio1 >= @biblio).to eq(true)
        end
        it "La referencia de El Quijote es mayor que la de Otelo" do
          expect(@biblio1 > @biblio).to eq(true)
        end
        it "La referencia de Rubok Anthy no es igual que la de Otelo" do
          expect(@biblio3 == @biblio).to eq(false)
        end
    end
    
end


#Pruebas Enumerable

describe Double_List do
    before :each do 
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Lista Doble Enumerable" do
        
        it "Comprobando el metodo all? cuando estan todos los elementos" do
            @doublelist.insert(1)
            @doublelist.insert(2)
            @doublelist.insert(3)
            expect(@doublelist.all?).to eq(true)
        end
        it "Comprobando el metodo all? cuando falta un elemento" do
            @doublelist.insert(nil)
            @doublelist.insert(2)
            @doublelist.insert(3)
            expect(@doublelist.all?).to eq(false)
        end
        it "Comprobando el metodo any? cuando falta algun elemento" do
            @doublelist.insert(1)
            @doublelist.insert(nil)
            @doublelist.insert(nil)
            expect(@doublelist.any?).to eq(true)
        end
        it "Comprobando el metodo any? cuando faltan todos los elementos" do
            @doublelist.insert(nil)
            @doublelist.insert(nil)
            @doublelist.insert(nil)
            expect(@doublelist.any?).to eq(false)
        end 
        it "Comprobando el metodo member?" do
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.member?(1)).to eq(true)
        end
        it "Comprobando el metodo first" do
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.first).to eq(1)
        end
        
        it "Comprobando el metodo sort" do
            @doublelist.insert(4)
            @doublelist.insert(2)
            @doublelist.insert(5)
            @doublelist.insert(1)
            @doublelist.insert(6)
            @doublelist.insert(3)
            expect(@doublelist.sort).to eq([1, 2, 3, 4, 5, 6])
            expect(@doublelist.sort.reverse).to eq([6, 5, 4, 3, 2, 1])
        end
        it "Comprobando metodos min y max" do
            @doublelist.insert(5)
            @doublelist.insert(4)
            @doublelist.insert(22)
            @doublelist.insert(7)
            @doublelist.insert(6)
            expect(@doublelist.max).to eq(22)
            expect(@doublelist.min).to eq(4)
        end
        it "Comprobando el metodo count para contar la cantidad de elementos insertados" do
            @doublelist.insert(15)
            @doublelist.insert(23)
            @doublelist.insert(35)
            @doublelist.insert(42)
            @doublelist.insert(22)
            expect(@doublelist.count).to eq(5)
        end
        it "Comprobando el metodo drop" do
            @doublelist.insert(44)
            @doublelist.insert(22)
            @doublelist.insert(26)
            @doublelist.insert(13)
            @doublelist.insert(43)
            @doublelist.insert(73)
            expect(@doublelist.drop(3)).to eq([26, 22, 44])
        end
        it "Comprobando el metodo detect para detectar elementos en la lista" do
            @doublelist.insert(44)
            @doublelist.insert(22)
            @doublelist.insert(26)
            @doublelist.insert(13)
            @doublelist.insert(43)
            @doublelist.insert(73)
            expect(@doublelist.detect {|x| x == 22}).to eq(22)
            expect(@doublelist.find {|x| x == 44}).to eq(44)
        end
    end
end 




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
        it "Una instancia de Libros" do
            expect(@libro.instance_of? Biblio).to eq(false)
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
    
    describe "Declaracion de nodos" do
        it "Existe un nodo con su previo, su valor y su siguiente" do
            @nodo = Nodostruct.new(nil,1,nil)
            expect(@nodo.prev).to eq(nil)
            expect(@nodo.value).to eq(1)
            expect(@nodo.next).to eq(nil)
        end
    end
    describe "Pruebas Listas" do
        it "Existe una lista y esta vacia" do
            expect(@doublelist.empty?).to eq(true)
        end
        
        context "Pruebas Insertar" do
            it "Se puede insertar un elemento en la lista" do
                @doublelist.insert(1)
                expect(@doublelist.head.value).to eq(1)
            end
            
            it "Se puede insertar varios elementos en la lista" do
                @doublelist.insert(1)
                @doublelist.insert(2)
                expect(@doublelist.head.value).to eq(2)
                expect(@doublelist.head.next.value).to eq(1)
            end
        end
        context "Pruebas Extraer" do
            it "Se puede extraer un elemento de la lista" do
                @doublelist.insert(1)
                @doublelist.extract
                expect(@doublelist.empty?).to eq(true)
            end
            
            it "Se puede extraer varios elementos de la lista" do
                @doublelist.insert(1)
                @doublelist.insert(2)
                @doublelist.extract
                @doublelist.extract
                expect(@doublelist.empty?).to eq(true)
            end
        end
        context "Recorrido Listas" do
            it "Left to Right" do
                @doublelist.insert(1)
                @doublelist.insert(2)
                expect(@doublelist.head.value).to eq(2)
                expect(@doublelist.head.next.value).to eq(1)
            end
            
            it "Right to Left" do
                @doublelist.insert(1)
                @doublelist.insert(2)
                expect(@doublelist.tail.value).to eq(1)
                expect(@doublelist.tail.prev.value).to eq(2)
            end
        end
    end
end
=end