require 'escrevendo_celular'

describe EscrevendoCelular do
  describe '#parse' do
    let(:celular){ EscrevendoCelular.new }
    
    context 'deve limitar em 255 caracteres' do
      context 'quando string é maior que 255' do
        it { expect(celular.parse("ASD" * 900).length).to eq 255 }
      end
      
      context 'quando string é menor que 255' do
        it { expect(celular.parse("A").length).to eq 1 }
      end
    end
    
    context 'deve fazer parse de letras para números' do
      it { expect(celular.parse("A")).to eq "2" }
      it { expect(celular.parse("B")).to eq "22" }
      it { expect(celular.parse("C")).to eq "222" }
      it { expect(celular.parse("D")).to eq "3" }
      it { expect(celular.parse("E")).to eq "33" }
      it { expect(celular.parse("F")).to eq "333" }
      it { expect(celular.parse("AA")).to eq "2_2" }
      it { expect(celular.parse("ADBECF")).to eq "232233222333" }
      it { expect(celular.parse("G")).to eq "4" }
      it { expect(celular.parse("H")).to eq "44" }
      it { expect(celular.parse("I")).to eq "444" }
      it { expect(celular.parse("J")).to eq "5" }
      it { expect(celular.parse("K")).to eq "55" }
      it { expect(celular.parse("L")).to eq "555" }
      it { expect(celular.parse("M")).to eq "6" }
      it { expect(celular.parse("N")).to eq "66" }
      it { expect(celular.parse("O")).to eq "666" }
      it { expect(celular.parse("P")).to eq "7" }
      it { expect(celular.parse("Q")).to eq "77" }
      it { expect(celular.parse("R")).to eq "777" }
      it { expect(celular.parse("S")).to eq "7777" }
      it { expect(celular.parse("T")).to eq "8" }
      it { expect(celular.parse("U")).to eq "88" }
      it { expect(celular.parse("V")).to eq "888" }
      it { expect(celular.parse("W")).to eq "9" }
      it { expect(celular.parse("X")).to eq "99" }
      it { expect(celular.parse("Y")).to eq "999" }
      it { expect(celular.parse("Z")).to eq "9999" }
      it { expect(celular.parse(" ")).to eq "0" }
    end
    
    context 'constroi string a paritr de numeros' do
      it { expect(celular.parse("SEMPRE")).to eq "77773367_77733"}
      it { expect(celular.parse("SEMPRE ACESSO O DOJOPUZZLES")).to eq "77773367_7773302_222337777_777766606660366656667889999_9999555337777" }
    end
    
    context 'case insensitive' do
      it { expect(celular.parse("SEMPRE")).to eq "77773367_77733" }
      it { expect(celular.parse("sempre")).to eq "77773367_77733" }
      it { expect(celular.parse("SeMpRE")).to eq "77773367_77733" }
      it { expect(celular.parse("sEmprE acesSo o DojoPuzzles")).to eq "77773367_7773302_222337777_777766606660366656667889999_9999555337777" }
    end
  end
end
