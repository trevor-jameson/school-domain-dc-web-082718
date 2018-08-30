# code here!
require 'pry'
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] # Does this key already exist?
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  # Have not been  able to pass #sort test yet
  def sort
    @roster.collect do |grade, students|
      students.sort {|x, y| x[0] <=> y[0]}
    end
    # @roster.to_h
  end
end
