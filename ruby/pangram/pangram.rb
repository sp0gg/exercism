class Pangram
  def self.pangram?(phrase)
    phrase.scan(/([a-z])(?!.*\1)/i).size == 26
  end
end

module BookKeeping
  VERSION = 3
end
