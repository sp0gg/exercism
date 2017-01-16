class Binary
  def self.to_decimal(binary_string)
    binary_string.scan(/[^01]/).empty? ? binary_string.reverse.chars.map.with_index{|b,i| b.to_i * 2**i}.inject(:+) : (raise ArgumentError)
  end
end

module BookKeeping
  VERSION = 3
end
