load "./Student.rb"

class Card
    attr_accessor :id_265, :borrowDate_265, :paymentDate_265, :bookId_265, :student_265
    def initialize()
        print "Nhập mã phiếu mượn: "
        @id_265 = gets.chomp
        print "Nhập ngày mượn: "
        @borrowDate_265 = gets.to_i
        print "Nhập hạn trả: "
        @paymentDate_265 = gets.to_i
        print "Nhập số hiệu sách: "
        @bookId_265 = gets.chomp
        puts "Nhập thông tin sinh viên: "
        @student_265 = Student.new
    end
    
    def toString
        return "Thẻ thư viện { Mã phiếu mượn = #{@id_265}, Ngày mượn = #{@borrowDate_265}, Ngày trả = #{paymentDate_265},
        Số hiệu sách = #{bookId_265}, #{@student_265.toString} }"
    end
end