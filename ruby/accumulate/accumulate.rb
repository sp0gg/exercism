class Array
  def accumulate
    result = []
    each {|e| result << yield(e)}
    result
  end
end

module BookKeeping
  VERSION = 1
end
