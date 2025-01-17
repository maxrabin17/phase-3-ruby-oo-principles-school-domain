# code here!
require 'pry'
class School

    attr_accessor :name, :roster

    def initialize(name = nil)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name 
    end
    # binding.pry
    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_students = {}
        roster.each do |grade, student|
            sorted_students[grade] = student.sort
        end
        sorted_students
    end
end