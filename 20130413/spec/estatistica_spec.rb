require "estatistica"

describe Estatistica do
  let(:estatistica){Estatistica.new("6, 9, 15, -2, 92, 11")}

  it "reconhece elementos da string" do
    estatistica.elementos.should have(6).items

    estatistica.elementos.first.should == 6
  end

  it "#media deve retornar a media" do
    estatistica = Estatistica.new("2, 1")
    estatistica.media.should == 1.5
  end

  it "#maior deve retornar o maior valor" do
    estatistica.maior.should == 92
  end

  it "#menor deve retornar o menor valor" do
    estatistica.menor.should eq(-2)
  end

  it "#conator deve retornar o total de elementos" do
    estatistica.contador.should have(6).items
  end
end
