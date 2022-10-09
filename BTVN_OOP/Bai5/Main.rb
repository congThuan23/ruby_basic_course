load "./Hotel.rb"
load "./Person.rb"
load "./Room.rb"
load "./RoomA.rb"
load "./RoomB.rb"
load "./RoomC.rb"

hotel = Hotel.new
while true
    puts "===== QUẢN LÝ KHÁCH HÀNG ĐẾN THUÊ PHÒNG CỦA KHÁCH SẠN ====="
    puts "1. Thêm mới khách thuê phòng."
    puts "2. Xoá khách hàng theo số CMND"
    puts "3. Tính tiền thuê phòng cho khách."
    puts "4. Hiển thị tất cả thông tin khách hàng."
    puts "5. Thoát."
    print "Vui lòng chọn: "
    n_265  = gets.to_i
    case n_265
        when 1
            puts "a. Phòng thuê loại A."
            puts "b. Phòng thuê loại B."
            puts "c. Phòng thuê loại C."
            while true
                print "Nhập lựa chọn: "
                choise = gets.chomp
                case choise
                    when "a"
                        room = RoomA.new
                        break
                    when 'b'
                        room = RoomB.new
                        break
                    when 'c'
                        room = RoomC.new
                        break
                    else
                        puts "Invalid"
                end
            end
            person = Person.new(room)
            hotel.add(person)
            person.toString
        when 2
            print "Nhập số CMND cần xoá khách hàng: "
            passport = gets
            puts hotel.delete(passport)
            hotel.show
        when 3
            print "Nhập số CMND khách hàng đề tính tiền thuê phòng: "
            passport = gets
            puts "Tiền phòng: #{hotel.calculator(passport)}"
        when 4
            hotel.show
        when 5
            break
        else
            puts "Không hợp lệ! "
    end
end