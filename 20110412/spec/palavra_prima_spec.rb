# Problema
# http://dojopuzzles.com/problemas/exibe/palavras-primas/
require File.expand_path(File.dirname(__FILE__) + '/../programa')

describe PalavraPrima do

  before :all do
    @palavra = PalavraPrima.new
  end

  it 'deveria retornar um array de int' do
    soma = @palavra.number_from_letter('A')
    soma.kind_of?(Integer).should be_true
  end

  it 'deveria retornar 1 quando for passado a' do
    soma = @palavra.number_from_letter('a')
    soma.should eql(1)
  end

  it 'deveria retornar 2 quando for passado b' do
    soma = @palavra.number_from_letter('b')
    soma.should eql(2)
  end

  it 'deveria retornar 3 quando for ab' do
    @palavra.phrase = "ab"
    @palavra.sum_words.should eql([3])
  end

  it 'deveria retornar 3 quando "a b"' do
    @palavra.phrase = "a b" 
    @palavra.sum_words.should eql([1, 2])
  end

  it 'deveria retornar primo quando for 3' do
    @palavra.prime?(3).should be_true
  end
  
  it 'deveria retornar primo quando for 5' do
    @palavra.prime?(5).should be_true
  end

  it 'deveria retornar primo quando for 13' do
    @palavra.prime?(13).should be_true
  end

  it 'deveria retornar false quando for 6' do
    @palavra.prime?(6).should be_false
  end

  it 'deveria retornar false quando for 55' do
    @palavra.prime?(55).should be_false
  end

  it 'deveria retornar true quando for 11' do
    @palavra.prime?(11).should be_true
  end

  it 'deveria retornar "3:primo 4:naoprimo 3:primo" quando for c bb c' do
    @palavra.phrase = "c bb c"
    @palavra.word_prime.should eql("3:primo 4:naoprimo 3:primo")
  end

  it 'deveria retornar "4:naoprimo 3:primo 3:primo" quando for bb c c' do
    @palavra.phrase = "bb c c"
    @palavra.word_prime.should eql("4:naoprimo 3:primo 3:primo")
  end

  it 'deveria retornar "31:primo" ' do
    @palavra.phrase = "E"
    @palavra.word_prime.should eql("31:primo")
  end

  it 'deveria retornar "31:primo 28:naoprimo 26:naoprimo" ' do
    @palavra.phrase = "E Aa z"
    @palavra.word_prime.should eql("31:primo 28:naoprimo 26:naoprimo")
  end
end
