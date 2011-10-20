require "url"

describe Url do
   it 'should be a class' do
    Url.class.should eql(Class)
   end

   it 'should return a valid object after passing url string' do
     url = Url.new("http://www.almirmendes.com/oi")
     url.should be_valid
   end

  it "should not be valid if the url is empty" do
    url = Url.new("")
    url.should_not be_valid
  end

  it "should be valid if the url starts with http" do
    url = Url.new("http://globo.com")
    url.should be_valid
  end

  it "should be valid if the url starts with ssh" do
    url = Url.new("ssh://globo.com")
    url.should be_valid
  end

  it "should not be valid if doesn't have a domain " do
    url = Url.new("http://.com")
    url.should_not be_valid
  end

  it "should not be valid if doesn't return the protocol" do
    url = Url.new("http://.com")
    url.get_tokens
  end

end
