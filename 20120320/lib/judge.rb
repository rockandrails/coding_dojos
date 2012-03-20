class Judge
  attr_accessor :player1, :player2 

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
  end

  def judgement
    jogadas_validas = ["Pedra", "Papel", "Tesoura"]
    raise JogadaInvalidaError if not (jogadas_validas.include?(@player1.jogada) or jogadas_validas.include?(@player2.jogada))

    if @player1.jogada == @player2.jogada
      "Empate" 
    elsif @player1.jogada == "Tesoura" and @player2.jogada == "Papel"
      @player1.name
    elsif @player1.jogada == "Pedra" and @player2.jogada == "Tesoura"
      @player1.name
    elsif @player1.jogada == "Papel" and @player2.jogada == "Pedra"
      @player1.name
    else
      @player2.name
    end
  end

end

class JogadaInvalidaError < StandardError
end
