class Trinary
  def initialize(num)
    @number = num
  end

  def to_decimal
    return 0 if @number =~ /[^0-2]/
    @number.reverse.chars.map.with_index{|t,i| t.to_i * 3**i}.inject(:+)
  end
end

module BookKeeping
  VERSION = 1
end
