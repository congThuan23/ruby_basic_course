load "./Student.rb"
load "./ManagerCard.rb"
load "./Card.rb"

managerCard  = ManagerCard.new
while true
    puts "===== QUẢN LÝ VIỆC MƯỢN TRẢ SÁCH THƯ VIỆN ====="
    puts "1. Thêm phiếu mượn."
    puts "2. Xoá phiếu mượn thông qua mã phiếu mượn."
    puts "3. Hiển thị thông tin các thẻ mượn."
    puts "4. Thoát."
    print "Vui lòng chọn: "
    n_265  = gets.to_i
    case n_265
        when 1
            card = Card.new
            managerCard.addCard(card)
            puts card.toString
        when 2
            print "Nhập mã phiếu mượn để xoá phiếu mượn: "
            id = gets.chomp
            if managerCard.deleteCard(id)
                puts "Xoá thành công"
                managerCard.showInfor
            else
                puts "Xoá thất bại!"
            end
        when 3
            managerCard.showInfor
        when 4
            break
        else
            puts "Không hợp lệ!"
    end
end