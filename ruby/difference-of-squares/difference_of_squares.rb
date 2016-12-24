class Squares
  def initialize(num)
    num != 0 ? @nums = (1..num) : @nums = [0]
  end

  def square_of_sum
    @nums.inject(:+) ** 2
  end

  def sum_of_squares
    @nums.map {|n| n**2}.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
