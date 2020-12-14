# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_accessor :name, :roster

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end