require "rspec"
require "line_break"

describe LineBreak do
  it "#columns" do
    line_break = LineBreak.new(columns: 20)
    line_break.columns.should eql(20)
  end

  it "#message" do
    line_break = LineBreak.new(message: "Um pequeno jabuti xereta viu dez cegonhas felizes.")
    line_break.message.should eql("Um pequeno jabuti xereta viu dez cegonhas felizes.")
  end

  it "#generate_lines" do
    line_break = LineBreak.new(columns: 20, message: "Um pequeno jabuti xereta viu dez cegonhas felizes.")
    line_break.generate_lines!
    line_break.lines.should eq(["Um pequeno jabuti", "xereta viu dez", "cegonhas felizes."])
  end

  context "#next_string" do
    it "should return str + word when string have ten characters" do
      line_break = LineBreak.new(columns: 20, message: "Um pequeno jabuti xereta viu dez cegonhas felizes.")
      line_break.next_string("Um", "pequeno").should eq("Um pequeno")
    end

    it "should return word when string have more than nineteen characters" do
      line_break = LineBreak.new(columns: 20, message: "Um pequeno jabuti xereta")
      line_break.next_string("Um pequeno jabuti", "xereta").should eq("xereta")
    end
  end

  it "should return 1 line when message is lower than 20 characters" do
    line_break = LineBreak.new(columns: 20, message: "Um pequeno jabutiii")
    line_break.generate_lines!
    line_break.lines.size.should  eq(1)
    line_break.lines.first.should eq("Um pequeno jabutiii")
  end

  it "should return 2 lines when message have 24 characters" do
    line_break = LineBreak.new(columns: 20, message: "Um pequeno jabuti xereta.")
    line_break.generate_lines!
    line_break.lines.size.should  eq(2)
    line_break.lines.first.should eq("Um pequeno jabuti")
    line_break.lines.last.should  eq("xereta.")
  end
end
