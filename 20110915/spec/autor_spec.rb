#coding: utf-8
require "autor"

describe Autor do

   it 'deveria retorna MENDES, Almir' do
    autor = Autor.new(["Almir Mendes"]) 
    autor.nome_para_livro.should eql([ "MENDES, Almir" ])
   end

  it "deveria retorna SFALSIN, Marcio" do
    autor = Autor.new(["Marcio Sfalsin"]) 
    autor.nome_para_livro.should eql([ "SFALSIN, Marcio" ])
  end

  it "deveria retorna VALLE, Uriel Juliatti" do
    autor = Autor.new(["Uriel Juliatti Valle"]) 
    autor.nome_para_livro.should eql([ "VALLE, Uriel Juliatti" ])
  end

  it "deveria retorna ANDREIA" do
    autor = Autor.new(["Andreia"]) 
    autor.nome_para_livro.should eql([ "ANDREIA" ])
  end

  it "deveria retornar MENDES, Almir e TAGLIATI, Andre" do
    autor = Autor.new(["Almir Mendes","Andre Tagliati"])
    autor.nome_para_livro.should eql(["MENDES, Almir","TAGLIATI, Andre"])
  end

  it 'deveria retorna "MENDES NETO, Almir"' do
    autor = Autor.new(["Almir Mendes Neto"])
    autor.nome_para_livro.should eql(["MENDES NETO, Almir"])
  end

  it 'deveria retorna "SYMEONIDIS JUNIOR, Petros"' do
    autor = Autor.new(["Petros Symeonidis Junior"])
    autor.nome_para_livro.should eql(["SYMEONIDIS JUNIOR, Petros"])
  end

  it 'deveria retorna "JUNIOR, Petros"' do
    autor = Autor.new(["Petros Junior"])
    autor.nome_para_livro.should eql(["JUNIOR, Petros"])
  end

  it 'deveria retorna "JULIATTI SOBRINHO, Urielzinho"' do
    autor = Autor.new(["Urielzinho Juliatti Sobrinho"])
    autor.nome_para_livro.should eql(["JULIATTI SOBRINHO, Urielzinho"])
  end

  it 'deveria retorna "JULIATTI SOBRINHO, Urielzinho" e "FILHO, Urielzinho"' do
    autor = Autor.new(["Urielzinho Juliatti Sobrinho", "Urielzinho Filho"])
    autor.nome_para_livro.should eql(["JULIATTI SOBRINHO, Urielzinho", "FILHO, Urielzinho"])
  end

  it 'deveria retornar "MENDES, Andreia"' do
    autor = Autor.new(["andreia mendes"])
    autor.nome_para_livro.should eql(["MENDES, Andreia"])
  end

  it 'deveria retornar "MENDES, Andreia"' do
    autor = Autor.new(["ANDREIA MENDES"])
    autor.nome_para_livro.should eql(["MENDES, Andreia"])
  end

  it 'deveria retornar "MENDES, Andreia de"' do
    autor = Autor.new(["ANDREIA de MENDES"])
    autor.nome_para_livro.should eql(["MENDES, Andreia de"])
  end

  it 'deveria retornar "MENDES, Andreia de"' do
    autor = Autor.new(["ANDREIA DE MENDES"])
    autor.nome_para_livro.should eql(["MENDES, Andreia de"])
  end

  it 'deveria retornar "MENDES, Andreia de"' do
    autor = Autor.new(["ANDREIA De MENDES"])
    autor.nome_para_livro.should eql(["MENDES, Andreia de"])
  end


  it 'deveria retornar "MENDES, Ághata de"' do
    autor = Autor.new(["ághata De MENDES"])
    autor.nome_para_livro.should eql(["MENDES, Ághata de"])
  end

  it 'deveria retornar "JUNIOR, Uriel de"' do
    autor = Autor.new(["Uriel de Junior"])
    autor.nome_para_livro.should eql(["JUNIOR, Uriel de"])
  end

  it 'deveria retornar "SANTOS NETO, João Sem Braço da Silva dos"' do
    autor = Autor.new(["João sem braço da silva dos santos neto"])
    autor.nome_para_livro.should eql(["SANTOS NETO, João Sem Braço da Silva dos"])
  end

  it 'deveria retornar "NETO, João Sem Braço da Silva dos Santos de"' do
    autor = Autor.new(["João sem braço da silva dos santos de neto"])
    autor.nome_para_livro.should eql(["NETO, João Sem Braço da Silva dos Santos de"])
  end
  
  it 'deveria retornar "NETO, Silva "' do
    autor = Autor.new(["silva neto"])
    autor.nome_para_livro.should eql(["NETO, Silva"])
  end


  it 'deveria retornar "NETO JUNIOR, Silva dos Santos"' do
    autor = Autor.new(["silva dos santos neto junior"])
    autor.nome_para_livro.should eql(["NETO JUNIOR, Silva dos Santos"])
  end

  it 'deveria retornar "NETÃO, Silva"' do
    autor = Autor.new(["silva netão"])
    autor.nome_para_livro.should eql(["NETÃO, Silva"])
  end

  it 'deveria retornar "MC\'LOUD, John"' do
    autor = Autor.new(["John Mc'loud"])
    autor.nome_para_livro.should eql(["MC'LOUD, John"])
  end

  it 'deveria retornar "C3PO, Petros"' do
    autor = Autor.new(["Petros c3po"])
    autor.nome_para_livro.should eql(["C3PO, Petros"])
  end

end
