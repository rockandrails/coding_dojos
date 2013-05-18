class Diamante
  attr_reader :range

  def initialize(token)
    @token = token
    @range = ("A"..token).to_a
  end

  def left(letter)
    " " * ((@range.size - 1) - @range.index(letter).to_i)
  end

  def body(letter)
    " " * ((2 * @range.index(letter).to_i) - 1)
  end

  def line(letter)
    line = left(letter) + letter
    line += body(letter) + letter unless @range.index(letter).zero?
    line
  end

  def print
    result = @range.map { |r| line(r) }
    result += result.reverse.last(@range.size - 1)
    result.join("\n")
  end
end
