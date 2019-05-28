# code here!
class School
  attr_accessor :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    grades = @roster.keys.sort
    grades.map do |grade|
      students = @roster[grade].sort
      {grade, students}
    end
  end

end
