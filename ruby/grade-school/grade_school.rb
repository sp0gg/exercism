class School
  def initialize
    @students = []
  end

  def add(*student)
    @students << {student[0] => student[1]}
  end

  def students(grade)
    @students.find_all{|s| s.values.first == grade}.map {|s| s.first[0]}.sort
  end

  def students_by_grade
    sorted = @students.sort_by {|s| s.values.first}.each.chunk_while{|s, i| s.values.first == i.values.first}.entries
    sorted.map{|a| {:grade => a.first.values.first, :students => a.map{|s| s.keys.first}.sort}}
  end
end

module BookKeeping
  VERSION = 3
end
