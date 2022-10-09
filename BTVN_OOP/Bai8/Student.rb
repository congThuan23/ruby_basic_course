class Student
    attr_accessor :name_265, :age_265, :class_265
    def initialize()
        print "Nhập tên: "
        @name_265 = gets.chomp
        print "Nhập tuổi:"
        @age_265 = gets.to_i
        print "Nhập lớp: "
        @class_265 = gets.chomp
    end

    def toString
        return "Sinh viên { Tên = #{@name_265}, Tuổi = #{@age_265}, Lớp = #{@class_265}}"
    end
end