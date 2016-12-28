class Fixnum
  PLACES_NUMERALS = [
    %w(I II III IV V VI VII VIII IX),
    %w(X XX XXX XL L LX LXX LXXX XC),
    %w(C CC CCC CD D DC DCC DCCC CM),
    %w(M MM MMM)
  ]

  def to_roman
    numeral = ''
    self.to_s.reverse.chars.each_with_index {|n, i| numeral = PLACES_NUMERALS[i][n.to_i-1] + numeral unless n.to_i.zero?}
    numeral
  end
end

module BookKeeping
  VERSION = 2
end
