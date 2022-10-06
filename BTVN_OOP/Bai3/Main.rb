load "./Managementcontestant.rb"

management = Managementcontestant.new

while true
    puts "=============== QUẢN CÁC THÍ SINH DỰ THI ĐẠI HỌC ==============="
    puts "1. Thêm mới thí sinh, bao gồm thí sinh khối A, B, C."
    puts "2. Hiển thị thông tin chi tiết của thí sinh."
    puts "3. Tìm kiếm theo số báo danh."
    puts "4. Thoát khỏi chương trình."

    puts "Vui lòng nhập chức năng cần thực hiện: "
    n_265 = gets.to_i

    case n_265
    when 1
        puts "1. Thêm thí sinh thuộc khối A."
        puts "2. Thêm thí sinh thuộc khối B."
        puts "3. Thêm thí sinh thuộc khối C."
        puts "Vui lòng chọn: "
        n1_265 = gets.to_i
        case n1_265
        when 1
            puts "Nhập số báo danh: "
            id_student = gets
            puts "Nhập họ tên: "
            name = gets
            puts "Nhập địa chỉ: "
            address = gets
            puts "Mức ưu tiên của thí sinh: "
            priority = gets
            puts "Nhập điểm môn TOÁN: "
            math = gets
            puts "Nhập điểm môn LÝ: "
            physics = gets
            puts "Nhập điểm môn HOÁ: "
            chemistry = gets
            contestantA = ContestantA.new(id_student, name, address, priority, math, physics, chemistry)
            management.addContestant(contestantA)
        when 2
            puts "Nhập số báo danh: "
            id_student = gets
            puts "Nhập họ tên: "
            name = gets
            puts "Nhập địa chỉ: "
            address = gets
            puts "Mức ưu tiên của thí sinh: "
            priority = gets
            puts "Nhập điểm môn TOÁN: "
            math = gets
            puts "Nhập điểm môn HOÁ: "
            chemistry = gets
            puts "Nhập điểm môn SINH: "
            biology = gets
            contestantB = ContestantB.new(id_student, name, address, priority, math, chemistry, biology)
            management.addContestant(contestantB) 
        when 3
            puts "Nhập số báo danh: "
            id_student = gets
            puts "Nhập họ tên: "
            name = gets
            puts "Nhập địa chỉ: "
            address = gets
            puts "Mức ưu tiên của thí sinh: "
            priority = gets
            puts "Nhập điểm môn VĂN: "
            literature = gets
            puts "Nhập điểm môn SỬ: "
            history = gets
            puts "Nhập điểm môn ĐỊA: "
            geography = gets
            contestantC = ContestantC.new(id_student, name, address, priority, literature, history, geography)
            management.addContestant(contestantC)
        end

    when 2
        puts "+++++ THÔNG TIN TẤT CẢ CÁC THÍ SINH DỰ THI +++++"
        management.showContestant()

    when 3
        puts "Vui lòng nhập số báo danh thí sinh dự thi cần tìm kiếm: "
        id = gets
        management.searchById(id)

    when 4
        exit()
    else
        puts "Không hợp lệ!"
    end
end
