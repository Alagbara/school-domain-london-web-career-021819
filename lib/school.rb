require 'pry'# code here!


class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
     if !(@roster.include?(grade))
       # binding.pry
       @roster[grade]= []
       @roster[grade] << name
     else
       @roster[grade] << name
     end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |name, grade|
      @roster[name].sort!
    end
  end


end
