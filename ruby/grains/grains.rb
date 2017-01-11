class Grains

  BOARD_RANGE = (1..64)

  def self.square(n)
    BOARD_RANGE.cover?(n) ? calc_grains(n) : (raise ArgumentError)
  end

  def self.total
    (Grains.square(BOARD_RANGE.last) * 2) - 1
  end

  def self.calc_grains(n)
    2**(n-1)
  end
end

module BookKeeping
  VERSION = 1
end
