class Array

  def keep
    filter {|e| yield e}
  end

  def discard
    filter {|e| !yield e}
  end

  private

  def filter
    self.each_with_object([]) {|e, result| result << e if yield e }
  end

end
