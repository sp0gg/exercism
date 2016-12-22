class Gigasecond
  def self.from(date)
    date + 1_000_000_000
  end
end

module BookKeeping
  VERSION = 5 # Where the version number matches the one in the test.
end
