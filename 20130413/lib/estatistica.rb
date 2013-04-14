class Estatistica
  def initialize(input)
    @elementos = input.split(",").map(&:to_f)
  end

  def elementos
    @elementos
  end

  def media
    @elementos.inject(:+) / @elementos.size
  end

  def maior
    maior = @elementos.first

    @elementos.each do |i|
      if i > maior
        maior = i
      end
    end

    maior
  end

  def menor
    min = @elementos.first

    @elementos.each do |i|
      if i < min
        min = i
      end
    end

    min
  end

  def contador
    total = 0
    @elementos.each{ total += 1 }
  end
end
