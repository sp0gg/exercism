class Robot

  LETTERS = ('A'..'Z').entries
  NUMBERS = ('100'..'999').entries
  @@used_names = []

  def initialize
    @name = generate_name
    while @@used_names.include?(@name) do
      @name = generate_name
    end
    @@used_names << @name
  end

  def generate_name
    name = ''
    2.times { name << generate_letter }
    name << generate_number
  end

  def generate_letter
    LETTERS[rand(0...LETTERS.size)]
  end

  def generate_number
    NUMBERS[rand(0...NUMBERS.size)]
  end

  def reset
    initialize
  end

  def name
    @name
  end
end

module BookKeeping
  VERSION = 2
end
