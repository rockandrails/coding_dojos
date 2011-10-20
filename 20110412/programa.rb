class PalavraPrima
  attr_accessor :phrase

  def initialize
    @@letters =[]
    "a".upto("z") { |l| @@letters << l }
    "A".upto("Z") { |l| @@letters << l }
  end

  def number_from_letter(letter) 
      @@letters.index(letter) + 1 
  end

  def sum_words
    words_sum = []
    words = self.phrase.split(" ")
    words.each do |word|
      sum = 0
      word.each_char do |c|
        sum += number_from_letter(c)
      end
      words_sum << sum
    end
    words_sum
  end

  def prime?(number)
    (number-1).downto 2 do |n|
      if (number % n == 0)
        return false
      end
    end
  end

  def word_prime
    retorno = []
    sum_words.each do |word|
      if prime?(word)
        retorno << "#{word}:primo"
      else
        retorno << "#{word}:naoprimo"
      end
    end
    retorno.join(" ")
  end

end
