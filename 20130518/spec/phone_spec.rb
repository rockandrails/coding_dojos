require "rspec"
require "phone"

describe Phone do
  it "deve receber M e retornar um numero 6" do
    phone = Phone.new("M")
    phone.parser.should == "6"
  end

  it "deve receber P e retornar um numero 7" do
    phone = Phone.new("P")
    phone.parser.should == "7"
  end  

  it "deve receber MP e retornar um numero 67" do
    phone = Phone.new("MP")
    phone.parser.should == "67"
  end

  it "deve receber MENDES e retornar um numero 636337" do
    phone = Phone.new("MENDES")
    phone.parser.should == "636337"
  end

  it "deve receber 1-HOME-SWEET-HOME e retornar 1-4663-79338-4663" do
    phone = Phone.new("1-HOME-SWEET-HOME")
    phone.parser.should == "1-4663-79338-4663"
  end

  it "deve receber MY-MISERABLE-JOB e retornar 69-647372253-562" do
    phone = Phone.new("MY-MISERABLE-JOB")
    phone.parser.should == "69-647372253-562"
  end

  it "deve receber my-miserable-job e retornar 69-647372253-562" do
    phone = Phone.new("my-miserable-job")
    phone.parser.should == "69-647372253-562"
  end
end