class Url
   
  attr_accessor :url, :protocol, :host, :domain, :path, :params

  def initialize(_url)
    @url = _url
  end
  
  def valid?
    not @url.empty? and /^(http|ssh):\/\/[a-z]+\./.match(@url)
  end
 
  def get_tokens
     @url.split(/:\/\//)

  end


end
