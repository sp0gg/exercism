class RunLengthEncoding
  def self.encode(string)
    string.chars.chunk_while {|i, j| i == j}.map {|e| "#{e.count if e.count > 1}#{e.first}"}.join
  end

  def self.decode(string)
    string.scan(/(\d*)(\D)/).map{|n, w| w * (n.empty? ? 1: n.to_i)}.join
  end
end

module BookKeeping
  VERSION = 2
end
