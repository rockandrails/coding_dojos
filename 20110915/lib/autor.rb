# coding: utf-8
class Autor
  attr_accessor :nomes
  def initialize(nomes=[])
    @nomes = nomes
    @nomes_especiais = ["Neto", "Filho", "Sobrinho", "Neta", "Filha", "Sobrinha", "Junior"]
    @preposicoes = ["da", "de", "do", "das", "dos"]
  end

  def nome_para_livro
    res = []
    @nomes.each do |nome|
      tmp = nome.split(" ")

      if tmp.size > 1
        last_last_name = tmp.delete_at(tmp.size - 1) # retira o último elemento
        if @nomes_especiais.include?(last_last_name.capitalize)
            if tmp.size > 1 and not @preposicoes.include?(tmp.last)
               last_name = tmp.delete_at(tmp.size - 1) 
               res << last_name.unicode_upcase+" "+last_last_name.unicode_upcase+", "+capitalize_name(tmp).join(" ")
            else
               res << last_last_name.unicode_upcase+", "+capitalize_name(tmp).join(" ")
            end
        else
          res << last_last_name.unicode_upcase+", "+capitalize_name( tmp ).join(" ")
        end
      else
        res << tmp.join.upcase
      end
    end
    res
  end


  def capitalize_name(nomes)
    nomes.map do |n|
      @preposicoes.include?(n.downcase) ? n.downcase : n.unicode_capitalize 
    end
  end

end

class String
  def unicode_upcase
    s = ""
    char_map = {"á" => "Á", "à" => "À", "â" => "Â", "ã" => "Ã", "ç" => "Ç", "é" => "É", "è" => "È", "í" => "Í",
    "ó" => "Ó", "ô" => "Ô", "ú" => "Ú"}
    self.each_char do |c|
      if char_map.include? c
        s += char_map[c]
      else
        s += c.upcase
      end
    end
    s
  end

  def unicode_capitalize
    s = self.downcase
    char_map = {"á" => "Á", "à" => "À", "â" => "Â", "ã" => "Ã", "ç" => "Ç", "é" => "É", "è" => "È", "í" => "Í",
    "ó" => "Ó", "ô" => "Ô", "ú" => "Ú"}
    if char_map.include? s[0]
      s[0] = char_map[s[0]]
    else
      s.capitalize!
    end
    s
  end

end
