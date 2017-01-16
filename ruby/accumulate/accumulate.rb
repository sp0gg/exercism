class Array
  def accumulate(operation = nil)
    result = []
    self.each {|e| block_given? ? result << yield(e) : result << e.send(operation)}
    result
  end
end

module BookKeeping
  VERSION = 1
end
