class Grains

  BOARD_RANGE = (1..64)

  def self.square(n)
    raise ArgumentError unless BOARD_RANGE.include?(n)
    calc_grains(n)
  end

  def self.total
    BOARD_RANGE.map {|n| calc_grains(n)}.inject(:+)
  end

  def self.calc_grains(n)
    2**(n-1)
  end
end

module BookKeeping
  VERSION = 1
end
