require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro1 = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        @libro2 = Biblio.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @libro3 = Biblio.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @libro4 = Biblio.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010",["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
        @libro5 = Biblio.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition", "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
    
        @nodo1 = Nodostruct.new(@libro1)
        @nodo2 = Nodostruct.new(@libro2)
        @nodo3 = Nodostruct.new(@libro3)
        @nodo4 = Nodostruct.new(@libro4)
        @nodo5 = Nodostruct.new(@libro5)
        
        @lista = Lista.new(0)
        
    end

    context "Nodo" do
        it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
            expect(@nodo1.valor).to eq(@libro1)
            expect(@nodo1.siguiente).to eq(nil)
        end
    end 
=begin    
    describe "Metodos" do
    
        it "Existe un método para obtener el listado de autores" do
            expect(@libro.autores).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
        end 
    
        it "Existe un método para obtener titulo" do
            expect(@libro.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        end 
    
        it "Existe un método para obtener serie" do
            expect(@libro.serie).to eq("(The Facets of Ruby)")
        end 
  
        it "Existe un método para obtener una editorial" do
            expect(@libro.editorial).to eq("Pragmatic Bookshelf")
        end 
    
        it "Existe un método para obtener un Número de edición" do
            expect(@libro.numedicion).to eq("4 edition")    
        end 
    
        it "Existe un método para obtener una fecha de publicación" do
            expect(@libro.fecha).to eq("(July 7, 2013)")    
        end 
    
        it "Existe un método para obtener uno más números ISBN" do
            expect(@libro.isbn).to eq(["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])    
        end 
        
    end
    
    describe "to_s" do
        it 'Existe un método para obtener la referencia formateada' do
            expect(@libro.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler \n Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide \n (The Facets of Ruby) \n Pragmatic Bookshelf \n 4 edition \n (July 7, 2013) \n [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")  
        end
    end
=end
end
