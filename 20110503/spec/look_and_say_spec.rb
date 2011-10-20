# Problema
# URL: http://dojopuzzles.com/problemas/exibe/sequencia-look-and-say/
require File.expand_path(File.dirname(__FILE__) + '/../look_and_say.rb')

describe LookAndSay do
  
  it 'Deveria receber 1 e retornar 11' do
    num = LookAndSay.new(1)
    num.say.should eql("11")
  end

  it 'Deveria receber 11 e retornar 21' do
    num = LookAndSay.new(11)
    num.say.should eql("21")
  end

  it 'Deveria receber 21 e retornar 1211' do
    num = LookAndSay.new(21)
    num.say.should eql("1211")
  end

  it 'Deveria receber 2 e retornar 12' do
    num = LookAndSay.new(2)
    num.say.should eql("12")
  end

  it 'Deveria receber 3112 e retornar 132112' do
    num = LookAndSay.new(3112)
    num.say.should eql("132112")
  end

  it 'Deveria retornar 2 quando somar 2' do
    num = LookAndSay.new(2)
    num.term(1).should eql("12")
  end

  it "Deveria retornar 1112 quando pedir a 2a posicao" do
    num = LookAndSay.new(2)
    num.term(2).should eql("1112")
  end

  it 'Deveria retornar 132112 quando pedir a 4a posicao de 2' do
    num = LookAndSay.new(2)
    num.term(4).should eql("132112")
  end

  it 'Deveria retornar 10 quando pedir a soma da 4a posicao de 2' do
    num = LookAndSay.new(2)
    num.term(4)
    num.sum.should eql(10)
  end

  it 'Deveria retornar 14 quando pedir a soma da 5a posicao de 2'  do
    num = LookAndSay.new(2)
    num.term(5)
    num.sum.should eql(15)
  end

end
