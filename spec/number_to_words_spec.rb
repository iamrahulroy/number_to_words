require 'spec_helper'
require_relative '../lib/word_hash'
require_relative '../lib/number_to_words'

describe "Test number to words conversion" do
  def number_to_words
    NumberToWords.new()
  end

  it "should return 'twenty one'" do
    expect(number_to_words.to_words(21)).to eq("twenty one")
  end

  it "should return 'ten'" do
    expect(number_to_words.to_words(10)).to eq("ten")
  end

  it "should return 'nineteen'" do
    expect(number_to_words.to_words(19)).to eq("nineteen")
  end

  it "should return 'twenty eight'" do
    expect(number_to_words.to_words(28)).to eq("twenty eight")
  end

  it "should return 'one hundred'" do
    expect(number_to_words.to_words(100)).to eq("one hundred")
  end

  it "should return 'five hundred'" do
    expect(number_to_words.to_words(500)).to eq("five hundred")
  end

  it "should return 'five hundred fifty eight'" do
    expect(number_to_words.to_words(558)).to eq("five hundred fifty eight")
  end

  it "should return 'one thousand one'" do
    expect(number_to_words.to_words(1001)).to eq("one thousand one")
  end

  it "should return 'nine hundred ninety nine'" do
    expect(number_to_words.to_words(999)).to eq("nine hundred ninety nine")
  end

  it "should return 'nine thousand nine hundred ninety nine'" do
    expect(number_to_words.to_words(9999)).to eq("nine thousand nine hundred ninety nine")
  end

  it "should return 'fifty one'" do
    expect(number_to_words.to_words(51)).to eq("fifty one")
  end
end
