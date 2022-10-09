load "./School.rb"
load "./Student.rb"

school = School.new
while true
    puts "===== QUẢN LÝ HỒ SƠ HỌC SINH CỦA TRƯỜNG THPT ====="
    puts "1. Thêm mới học sinh."
    puts "2. Hiển thị các học sinh 20 tuổi."
    puts "3. Số lượng các học sinh có tuổi là 23 và quê ở Đà Nẵng."
    puts "4. Thoát."
    print "Nhập lựa chọn: "
    n_265  = gets.to_i
    case n_265
        when 1
            student = Student.new()
            school.add(student)
            student.toString
        when 2
            puts "+++++ Danh sách học sinh 20 tuổi +++++"
            school.getStudent20YearOld.each{|item| puts item.toString}
        when 3
            puts "Số lượng học sinh có tuổi là 23 và quê ở Đà Nẵng: #{school.countStudent23YearOldInDN}"
        when 4
            break
        else
            puts "Không hợp lệ!"
    end
end