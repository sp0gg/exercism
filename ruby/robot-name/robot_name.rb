class Robot

  LETTERS = ('A'..'Z').entries
  NUMBERS = ('0'..'9').entries
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
    name << LETTERS.sample(2).join
    name << NUMBERS.sample(3).join
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
