class Hamming
  def self.compute(first, second)
   raise ArgumentError unless first.length == second.length
   first.chars.zip(second.chars).count {|set| set[0] != set[1]}
  end
end
