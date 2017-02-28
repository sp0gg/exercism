class Array

  def keep
    filter {|e| yield e}
  end

  def discard
    filter {|e| !yield e}
  end

  private

  def filter
    result = []
    self.each do |e|
      if yield e
        result << e
      end
    end
    result
  end

end
