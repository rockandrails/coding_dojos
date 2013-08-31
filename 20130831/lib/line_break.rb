class LineBreak
  attr_reader :columns, :message, :lines
  def initialize(columns: 20, message: "")
    @columns = columns
    @message = message
    @lines   = []
  end

  def print
    lines.each { |line| puts line }
  end

  def generate_lines!
    str = ""
    message.split.each { |word| str = next_string(str, word) }
    lines << str
  end

  def next_string(str, word)
    str_aux = str
    str_aux = str_aux.empty? ? word : "#{str_aux} #{word}"
    if str_aux.size > columns
      lines << str
      word
    else
      str_aux
    end
  end
end

