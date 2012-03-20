class Player
  attr_accessor :name, :jogada

  def initialize(attr_name, attr_jogada="")
    @name = attr_name
    @jogada = attr_jogada
  end
end
