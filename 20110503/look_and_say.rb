class LookAndSay
  attr_accessor :numero

  def initialize(numero)
    @numero = numero
  end
  
  def say
    repeticoes = {}
    @numero.to_s.each_char do |n|
      unless repeticoes.keys.include? n
        repeticoes[n] = 1
      else
        repeticoes[n] += 1
      end
    end
    retorno = ""
    repeticoes.each do |i,n| 
      retorno << "#{n}#{i}"
    end
    retorno
  end

  def term(n)
    n.times do |t|
      @numero = self.say
    end
    @numero
  end

  def sum
    total = 0
    @numero.each_char do |n|
      total += n.to_i
    end
    total
  end
  
end
