module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(drops)
    factor_output = {105 => 'PlingPlangPlong', 35 => 'PlangPlong', 21 => 'PlingPlong',
                     15 => 'PlingPlang', 7 => 'Plong', 5 => 'Plang', 3 => 'Pling', 1 => drops.to_s}
    factor_output.find() {|k, v| drops % k == 0}[1]
  end
end
