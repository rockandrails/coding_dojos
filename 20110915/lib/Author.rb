# coding: utf-8

class Author
    attr_accessor :names

    def initialize(names=[])
        @names           = names
        @names_especials = ["Neto", "Filho", "Sobrinho", "Neta", "Filha",
                            "Sobrinha", "Junior"]
        @prepositions    = ["da", "de", "do", "das", "dos"]
    end

    def name_to_book
        res = []
        @names.each do |name|
            name_tokens = name.split(" ")
            if name_tokens.size > 1
                surname = name_tokens.delete_at(name_tokens.size - 1)
                if @names_especials.include?(surname.unicode_capitalize) and 
                   name_tokens.size > 1 and 
                   not @prepositions.include?(name_tokens.last)
                   last_name = name_tokens.delete_at(name_tokens.size - 1) 
                   res << last_name.unicode_upcase + " " +
                          surname.unicode_upcase + ", " +
                          capitalize_name(name_tokens).join(" ")
                else
                    res << surname.unicode_upcase + ", " +
                           capitalize_name( name_tokens ).join(" ")
                end
            else
                res << name_tokens.join.upcase
            end
        end

        res
    end


    def capitalize_name(names)
        names.map do |n|
            @prepositions.include?(n.downcase) ? n.downcase : n.unicode_capitalize 
        end
    end

end

class String
    def unicode_upcase
        s = ""
        char_map = {"á" => "Á", "à" => "À", "â" => "Â", "ã" => "Ã", "ç" => "Ç",
                    "é" => "É", "è" => "È", "í" => "Í", "ó" => "Ó", "ô" => "Ô",
                    "ú" => "Ú"}
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
        char_map = {"á" => "Á", "à" => "À", "â" => "Â", "ã" => "Ã", "ç" => "Ç",
                    "é" => "É", "è" => "È", "í" => "Í", "ó" => "Ó", "ô" => "Ô",
                    "ú" => "Ú"}
        if char_map.include? s[0]
            s[0] = char_map[s[0]]
        else
            s.capitalize!
        end

        s
    end

end
