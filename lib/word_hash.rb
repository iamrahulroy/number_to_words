class WordHash
  # merges ones, twos & tens hashes into single hash for convience.
  def self.words
    # Caching the words hash to save space
    @words ||= ones.merge(twos).merge(tens)
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
      20 => "twenty",
      30 => "thirty",
      40 => "fourty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }
  end

end
