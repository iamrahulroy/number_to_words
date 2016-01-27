require 'spec_helper'
require_relative '../lib/word_hash'
require_relative '../lib/number_to_words'

describe "Test number to words conversion" do
  def number(num)
    NumberToWords.new(num)
  end

  it "should return 'twenty one'" do
    expect(number(21).to_words).to eq("twenty one")
  end

  it "should return 'zero'" do
    expect(number(0).to_words).to eq("zero")
  end

  it "should return 'ten'" do
    expect(number(10).to_words).to eq("ten")
  end

  it "should return 'nineteen'" do
    expect(number(19).to_words).to eq("nineteen")
  end

  it "should return 'twenty eight'" do
    expect(number(28).to_words).to eq("twenty eight")
  end

  it "should return 'one hundred'" do
    expect(number(100).to_words).to eq("one hundred")
  end

  it "should return 'five hundred fifty eight'" do
    expect(number(558).to_words).to eq("five hundred fifty eight")
  end

  it "should return 'five'" do
    expect(number(005).to_words).to eq("five")
  end

  it "should return 'fifty one'" do
    expect(number("051").to_words).to eq("fifty one")
  end
end
