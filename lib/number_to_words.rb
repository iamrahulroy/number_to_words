require 'byebug'

class NumberToWords
  def initialize(num)
    @words = WordHash.words
    @num = num.to_i # Convert to integer if 'num' passed as string
    @num_array = build_array
  end

  def build_array
    @num.to_s.split('').map(&:to_i)
  end

  def to_words
    if @words.has_key?(@num)
      @words[@num]
    else
      calculate_words(@num)
    end
  end


  def calculate_words(num)
    length = @num_array.length
    if length == 2
      two_digit_number_to_words(@num_array[0], @num_array[1])
    elsif length == 3
      three_digit_number_to_words(@num_array[0]) + two_digit_number_to_words(@num_array[1], num_array[2])
    elsif length > 3
      puts "Only numbers upto 3 digits are supported!"
    else
      # Good practice to handle else
      raise "Not sure what you mean. You entered #{@num}"
    end
  end

  def two_digit_number_to_words(num1, num2)
    @words[num1 * 10] + ' ' + @words[num2]
  end

  def three_digit_number_to_words(num)
    @words[num] + ' hundred '
  end

end
