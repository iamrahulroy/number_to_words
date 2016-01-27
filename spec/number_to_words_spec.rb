require 'spec_helper'
require_relative '../lib/word_hash'
require_relative '../lib/number_to_words'

describe "Test number to words conversion" do
  let(:number_to_words) { NumberToWords.new(21) }
  it "should return 'twenty one'" do
    expect(number_to_words.to_words).to eq("twenty one")
  end
end
