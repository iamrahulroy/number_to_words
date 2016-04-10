module WordHash
  ONES = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
           7 => "seven", 8 => "eight", 9 => "nine" }.freeze

  TWOS = { 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
           16 => "Sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }.freeze

  TENS = { 10 => "ten", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty",
           70 => "seventy", 80 => "eighty", 90 => "ninety" }.freeze

  def words
    ONES.merge(TWOS).merge(TENS)
  end
end
