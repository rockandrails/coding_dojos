require "rspec"
require "diamante"
require "colorize"

describe Diamante do
  it "deve receber 'A' e range ser [A]" do
    diamante = Diamante.new("A")
    diamante.range.should == ["A"]
  end

  it "deve receber 'B' e retornar 3 linhas" do
    diamante = Diamante.new("B")
    print = diamante.print.split("\n").size
    print.should == 3
  end 

  it "deve receber 'E' e retornar 9 linhas" do
    diamante = Diamante.new("E")
    print = diamante.print.split("\n").size
    print.should == 9
  end

  it "deve receber 'A' e retornar 1 linha" do
    diamante = Diamante.new("A")
    print = diamante.print.split("\n").size
    print.should == 1
  end

  it "deve receber 'B' e retornar 'B B'" do
    diamante = Diamante.new("B")
    print = diamante.print.split("\n")
    print[1].should == "B" + ".".red + "B"
  end

  it "deve receber 'C' e range=[A,B,C]" do
    diamante = Diamante.new("C")
    diamante.range.should == %w(A B C)
  end

  context "#left" do
    it "deve imprimir 0 espacos quando receber 'A'" do
      diamante = Diamante.new("A")
      diamante.left("A").should == ""
    end

    it "deve imprimir 2 espacos para 'A' quando receber 'C'" do
      diamante = Diamante.new("C")
      diamante.left("A").should == "  "
    end

    it "deve imprimir 1 espaco para 'B' quando receber 'C'" do
      diamante = Diamante.new("C")
      diamante.left("B").should == " "
    end
  end

  context "#body" do
    it "deve retornar 1 ponto vermelho para B" do
      diamante = Diamante.new("C")
      diamante.body("B").should == ".".red
    end

    it "deve retornar 3 pontos vermelhos para C" do
      diamante = Diamante.new("C")
      diamante.body("C").should == ".".red * 3
    end
  end
end
