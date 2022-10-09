load "./ManagerTeacher.rb"
load "./Teacher.rb"

managerTeacher  = ManagerTeacher.new
while true
    puts "===== QUẢN LÝ THANH TOÁN TIỀN LƯƠNG CHO GIÁO VIÊN ====="
    puts "1. Thêm cán bộ giáo viên."
    puts "2. Xoá cán bộ giáo viên theo mã số giáo viên."
    puts "3. Tính lương thực lĩnh cho giáo viên."
    puts "4. Thoát"
    print "Nhập lựa chọn: "
    n_265  = gets.to_i
    case n_265
        when 1
            teacher = Teacher.new
            managerTeacher.add(teacher)
            puts teacher.toString
        when 2
            print "Nhập mã số giáo viên để xoá: "
            id = gets.chomp
            if managerTeacher.deleteById(id)
                puts "Xoá thành công!"
                managerTeacher.show
            else
                puts "Fail"
            end
        when 3
            print "Nhập mã giáo viên để tính lương thực lĩnh: "
            id = gets.chomp
            puts "Lương thực lĩnh: #{managerTeacher.getSalary(id)}"
        when 4 
            break
        else
            puts "Không hợp lệ!"
    end
end