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

  def sort
    num_sorted_roster = @roster.sort.to_h
    num_sorted_roster.each do |grade, student_arr|
      student_arr.sort!
    end
    num_sorted_roster
  end
end
