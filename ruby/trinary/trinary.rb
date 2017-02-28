class Trinary
  def initialize(num)
    @number = num
  end

  def to_decimal
    return 0 if @number.match(/.*[a-zA-Z3-9].*/)
    @number.reverse.chars.map.with_index{|b,i| b.to_i * 3**i}.inject(:+)
  end
end

module BookKeeping
  VERSION = 1
end
