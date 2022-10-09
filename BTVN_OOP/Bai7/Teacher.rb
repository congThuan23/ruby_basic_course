class Teacher
    attr_accessor :salary_265, :bonus_265, :penaty_265, :realSalary_265, :name_265, :age_265, :hometown_265, :id_265
    def initialize()
        print "Nhập tiền lương cứng: "
        @salary_265 = gets.to_f
        print "Nhập tiền lương thưởng:"
        @bonus_265 = gets.to_f
        print "Nhập tiền phạt: "
        @penaty_265 = gets.to_f
        @realSalary_265 = getRealSalary
        print "Nhập tên: "
        @name_265 = gets.chomp
        print "Nhập tuổi:"
        @age_265 = gets.to_i
        print "Nhập quê quán: "
        @hometown_265 = gets.chomp
        print "Nhập mã số giáo viên: "
        @id_265 = gets.chomp
    end

    def getRealSalary
        return @salary_265 + @bonus_265 - @penaty_265
    end

    def toString
        return "Giáo viên {Lương cứng = #{@salary_265}, Lương thưởng = #{@bonus_265}, Tiền phạt = #{@penaty_265}, 
        Lương thực lĩnh = #{@realSalary_265}, Tên = #{@name_265}, Tuổi = #{@age_265}, Quê quán = #{@hometown_265}, Mã giáo viên = #{@id_265}}"
    end
end