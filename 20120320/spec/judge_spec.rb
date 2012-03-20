require "judge"

describe Judge do
  let(:p1) { Player.new("Almir") }
  let(:p2) { Player.new("Hackin") }

  it 'Deveria inicializar judge com 2 jogadores' do
    p1.jogada = "Pedra"
    p2 = Player.new("Hackin", "Tesoura")
    judge = Judge.new(p1, p2)
    judge.player1.should eql(p1)
  end

  context "considerando empate" do
    it 'entre Pedra e Pedra' do
      p1 = Player.new("Almir", "Pedra")
      p2 = Player.new("Hackin", "Pedra")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql("Empate")
    end

    it 'entre Papel e Papel' do
      p1 = Player.new("Almir", "Papel")
      p2 = Player.new("Hackin", "Papel")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql("Empate")
    end

    it 'entre Tesoura e Tesoura' do
      p1 = Player.new("Almir", "Tesoura")
      p2 = Player.new("Hackin", "Tesoura")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql("Empate")
    end
  end

  context 'considerando Vitoria de Player1' do
    it 'Tesoura ganha de Papel' do
      p1 = Player.new("Almir", "Tesoura")
      p2 = Player.new("Hackin", "Papel")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p1.name)
    end

    it 'Pedra ganha de Tesoura' do
      p1 = Player.new("Almir", "Pedra")
      p2 = Player.new("Hackin", "Tesoura")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p1.name)
    end

    it 'Papel ganha de Pedra' do
      p1 = Player.new("Almir", "Papel")
      p2 = Player.new("Hackin", "Pedra")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p1.name)
    end
  end

  context 'Player2 ganha de Player1' do
    it 'Papel ganha de Pedra' do
      p1 = Player.new("Almir", "Pedra")
      p2 = Player.new("Hackin", "Papel")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p2.name)
    end

    it 'Tesoura ganha de Papel' do
      p1 = Player.new("Almir", "Papel")
      p2 = Player.new("Hackin", "Tesoura")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p2.name)
    end

    it 'Pedra ganha de Tesoura' do 
      p1 = Player.new("Almir", "Tesoura")
      p2 = Player.new("Hackin", "Pedra")
      judge = Judge.new(p1, p2)
      judge.judgement.should eql(p2.name)
    end

  end

  context "com jogadas invalidas" do
    it 'Jogada vazia' do
      p1 = Player.new("Almir", "")
      p2 = Player.new("Hackin", "")
      judge = Judge.new(p1, p2)
      expect { judge.judgement }.to raise_error(JogadaInvalidaError)
    end

    it 'Jogada Spock' do
      p1.jogada = "Spock"
      p2.jogada = "Spock"
      judge = Judge.new(p1, p2)
      expect { judge.judgement }.to raise_error(JogadaInvalidaError)
    end

    it 'Jogada com nil' do
      p1.jogada = nil 
      p2.jogada = nil 
      judge = Judge.new(p1, p2)
      expect { judge.judgement }.to raise_error(JogadaInvalidaError)
    end
  end

end
