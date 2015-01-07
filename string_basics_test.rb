require 'rspec'
require_relative 'string_basics'

describe SimpleString do
	attr_reader :string
  before do
  	@string = SimpleString.new("hello")
  end

  it "exists" do
  	expect(string).to be_a(SimpleString)
  end	

  it "calculates length" do 
  	expect(string.length).to eq(5)
  end

  it "returns true if ends with correct letters" do 
  	expect(string.end_with?("o")).to eq(true)
  end

  it "returns true if end_with? called with integer" do
  	new_string = SimpleString.new("9")
  	expect(new_string.end_with?("9")).to be(true)
  end

  it "upcases each letter" do
  	expect(string.upcase).to eq("HELLO")
  end

  it "concats strings" do 
  	string2 = SimpleString.new("bye")
  	result = string + string2
  	expect(result).to eq("hellobye")
  	result2 = SimpleString.new("Hey") + SimpleString.new("999")
  	expect(result2).to eq("Hey999")
  end
	
end