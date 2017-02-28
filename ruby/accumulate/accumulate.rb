class Array
  def accumulate
    each_with_object([]) {|e, result| result << yield(e)}
  end
end

module BookKeeping
  VERSION = 1
end
