class Squares
  def initialize(num)
    @num = num
    @num_array = [*1..num]
  end

  def square_of_sum
    array = @num_array
    array.reduce(0) { |sum, e| sum + e } ** 2
  end

  def sum_of_squares
    array = @num_array
    array.reduce(0) { |sum, e| sum + e**2 }
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end
end

module BookKeeping
  VERSION = 4
end