class Squares
  def initialize(num)
    @nums = (1..num)
  end

  def square_of_sum
    @nums.inject(0, :+) ** 2
  end

  def sum_of_squares
    @nums.map {|n| n**2}.inject(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
