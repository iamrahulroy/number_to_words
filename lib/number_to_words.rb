require_relative 'word_hash'
require 'byebug'

class NumberToWords
  extend WordHash

  attr_accessor :number_names

  def initialize
    @number_names = NumberToWords.words
  end

  def to_words(number)
    return number_names[number] if number_names.keys.include?(number) && number != 100
    output = ''
    number_names.each do |num, name|
      if number < 100 && number/num > 0
        return (output + "#{name} " + to_words(number%num)).strip
      elsif number/num > 0
        return (output + to_words(number/num) + " #{name} " + to_words(number%num)).strip
      end
    end
  end

end
