require "player"

describe Player do

  it 'Deveria inicializar Player com um nome' do
    player = Player.new("Hercules", "Pedra")
    player.name.should eql("Hercules")
  end

  it 'Deveria inicializar Player com jogada Pedra' do
    player = Player.new("Hercules", "Pedra") 
    player.jogada.should eql("Pedra")
  end

end
