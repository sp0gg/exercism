class Hamming
  def self.compute(first, second)
   raise ArgumentError unless first.length == second.length
   weight = 0
   first.chars.each_with_index {|e, i| weight+= 1 unless e == second[i]}
   weight
  end
end
