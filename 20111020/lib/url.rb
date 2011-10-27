#
# Entrada: http://www.google.com/mail/xyz?user=fulano
# 
class Url
   
  attr_accessor :url, :protocol, :host, :domain, :path, :params

  def initialize(_url)
    @url = _url
  end
  
  def valid?
    not @url.empty? and /^(http|ssh):\/\/[a-z]+\./.match(@url)
  end
 
  def get_tokens
      u = @url.split(/:\/\//)
      if u[1].split(".").size > 2
        u[1] = u[1].split(".", 2)
      end
      u.flatten
  end


end
