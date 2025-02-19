class School
    attr_accessor  :roster, :student, :grade

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.each {|grade, students| students.sort!}
    end
end
