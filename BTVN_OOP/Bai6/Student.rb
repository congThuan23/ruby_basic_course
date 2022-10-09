class Student
    attr_accessor :name_265, :age_265, :hometown_265, :classStudent_265
    def initialize()
        print "Nhập tên: "
        @name_265 = gets.chomp
        print "Nhập tuổi:"
        @age_265 = gets.to_i
        print "Nhập quê quán: "
        @hometown_265 = gets.chomp
        print "Nhập lớp học: "
        @classStudent_265 = gets.to_i
    end

    def toString
        return "Học sinh {Tên = #{@name_265}, Tuổi = #{@age_265}, Quê quán = #{@hometown_265}, Lớp = #{@classStudent_265}}"
    end
end