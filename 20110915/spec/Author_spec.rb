#coding: utf-8

require "Author"

describe Author do

    it 'deveria retorna MENDES, Almir' do
        author = Author.new(["Almir Mendes"]) 
        author.name_to_book.should eql(["MENDES, Almir"])
    end

    it "deveria retorna SFALSIN, Marcio" do
        author = Author.new(["Marcio Sfalsin"]) 
        author.name_to_book.should eql(["SFALSIN, Marcio"])
    end

    it "deveria retorna VALLE, Uriel Juliatti" do
        author = Author.new(["Uriel Juliatti Valle"]) 
        author.name_to_book.should eql(["VALLE, Uriel Juliatti"])
    end

    it "deveria retorna ANDREIA" do
        author = Author.new(["Andreia"]) 
        author.name_to_book.should eql(["ANDREIA"])
    end

    it "deveria retornar MENDES, Almir e TAGLIATI, Andre" do
        author = Author.new(["Almir Mendes","Andre Tagliati"])
        author.name_to_book.should eql(["MENDES, Almir","TAGLIATI, Andre"])
    end

    it 'deveria retorna "MENDES NETO, Almir"' do
        author = Author.new(["Almir Mendes Neto"])
        author.name_to_book.should eql(["MENDES NETO, Almir"])
    end

    it 'deveria retorna "SYMEONIDIS JUNIOR, Petros"' do
        author = Author.new(["Petros Symeonidis Junior"])
        author.name_to_book.should eql(["SYMEONIDIS JUNIOR, Petros"])
    end

    it 'deveria retorna "JUNIOR, Petros"' do
        author = Author.new(["Petros Junior"])
        author.name_to_book.should eql(["JUNIOR, Petros"])
    end

    it 'deveria retorna "JULIATTI SOBRINHO, Urielzinho"' do
        author = Author.new(["Urielzinho Juliatti Sobrinho"])
        author.name_to_book.should eql(["JULIATTI SOBRINHO, Urielzinho"])
    end

    it 'deveria retorna "JULIATTI SOBRINHO, Urielzinho" e "FILHO, Urielzinho"' do
        author = Author.new(["Urielzinho Juliatti Sobrinho", "Urielzinho Filho"])
        author.name_to_book.should eql(["JULIATTI SOBRINHO, Urielzinho", "FILHO, Urielzinho"])
    end

    it 'deveria retornar "MENDES, Andreia"' do
        author = Author.new(["andreia mendes"])
        author.name_to_book.should eql(["MENDES, Andreia"])
    end

    it 'deveria retornar "MENDES, Andreia"' do
        author = Author.new(["ANDREIA MENDES"])
        author.name_to_book.should eql(["MENDES, Andreia"])
    end

    it 'deveria retornar "MENDES, Andreia de"' do
        author = Author.new(["ANDREIA de MENDES"])
        author.name_to_book.should eql(["MENDES, Andreia de"])
    end

    it 'deveria retornar "MENDES, Andreia de"' do
        author = Author.new(["ANDREIA DE MENDES"])
        author.name_to_book.should eql(["MENDES, Andreia de"])
    end

    it 'deveria retornar "MENDES, Andreia de"' do
        author = Author.new(["ANDREIA De MENDES"])
        author.name_to_book.should eql(["MENDES, Andreia de"])
    end

    it 'deveria retornar "MENDES, Ághata de"' do
        author = Author.new(["ághata De MENDES"])
        author.name_to_book.should eql(["MENDES, Ághata de"])
    end

    it 'deveria retornar "JUNIOR, Uriel de"' do
        author = Author.new(["Uriel de Junior"])
        author.name_to_book.should eql(["JUNIOR, Uriel de"])
    end

    it 'deveria retornar "SANTOS NETO, João Sem Braço da Silva dos"' do
        author = Author.new(["João sem braço da silva dos santos neto"])
        author.name_to_book.should eql(["SANTOS NETO, João Sem Braço da Silva dos"])
    end

    it 'deveria retornar "NETO, João Sem Braço da Silva dos Santos de"' do
        author = Author.new(["João sem braço da silva dos santos de neto"])
        author.name_to_book.should eql(["NETO, João Sem Braço da Silva dos Santos de"])
    end

    it 'deveria retornar "NETO, Silva "' do
        author = Author.new(["silva neto"])
        author.name_to_book.should eql(["NETO, Silva"])
    end


    it 'deveria retornar "NETO JUNIOR, Silva dos Santos"' do
        author = Author.new(["silva dos santos neto junior"])
        author.name_to_book.should eql(["NETO JUNIOR, Silva dos Santos"])
    end

    it 'deveria retornar "NETÃO, Silva"' do
        author = Author.new(["silva netão"])
        author.name_to_book.should eql(["NETÃO, Silva"])
    end

    it 'deveria retornar "MC\'LOUD, John"' do
        author = Author.new(["John Mc'loud"])
        author.name_to_book.should eql(["MC'LOUD, John"])
    end

    it 'deveria retornar "C3PO, Petros"' do
        author = Author.new(["Petros c3po"])
        author.name_to_book.should eql(["C3PO, Petros"])
    end

end
