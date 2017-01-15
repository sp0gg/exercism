class RunLengthEncoding
  def self.encode(string)
    pairs = []
    until string.empty? do
      letter = string[0]
      count = 0
      until letter != string[0]
        string = string[1..-1]
        count += 1
      end
      pairs << "#{count if count > 1}#{letter}"
    end
    pairs.join
  end

  def self.decode(str)
    output = ''
    string = str
    until string.empty? do
      num = string.match(/^(\d+)/)
      if num
        num = num[0]
        string = string[num.size..-1]
        letter = string[0]
        num.to_i.times do output << letter end
      else
        output << string[0]
      end
      string = string[1..-1]
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end
