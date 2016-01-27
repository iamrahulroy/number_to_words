require 'byebug'

class NumberToWords
  # merges ones, twos & tens hashes into single hash for convience.
  def self.words
    # Caching the words hash to save space
    @words ||= ones.merge(twos).merge(tens)
  end

  # Should this function be extracted into different class?
  def to_words(num)
    # This should go into some intialization function, but let's leave it here for now.
    # IDEA: Move this into initialize method and return @words
    @words = NumberToWords.words
    if @words.has_key?(num)
      @words[num]
    else
      calculate_words(num)
    end
  end

  def calculate_words(num)
    if num.to_s.length == 2
      num_arr = num.to_s.split('').map(&:to_i)
      @words[num_arr[0] * 10] + ' ' + @words[num_arr[1]]
    elsif num.to_s.length == 3
      num_arr = num.to_s.split('').map(&:to_i)
      @words[num_arr[0]] + ' hundred ' + @words[num_arr[0] * 10] + ' ' + @words[num_arr[1]]
    end
  end


  # Separation of concerns
  def self.ones
    {
      0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
  end

  def self.twos
    {
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "Sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen"
    }
  end

  def self.tens
    {
      10 => "ten",
      20 => "tweentee",
      30 => "thirty",
      40 => "fourtry",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }
  end
end
