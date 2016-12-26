class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.pangram?(phrase)
    phrase.scan(/([#{ALPHABET.join}])(?!.*\1)/i).size == ALPHABET.size
  end
end

module BookKeeping
  VERSION = 3
end
