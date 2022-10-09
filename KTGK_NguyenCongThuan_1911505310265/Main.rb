# Họ tên: Nguyễn Công Thuận
# Mã SV: 1911505310265

load "./QuanLyPhuongTienGT_265.rb"

quanLyPhuongTien = QuanLyPhuongTienGT.new

while true
    puts "=============== QUẢN LÝ PHƯƠNG TIỆN GIAO THÔNG ==============="
    puts "1. Thêm mới các phương tiện giao thông."
    puts "2. Hiển thị danh sách các phương tiện giao thông."
    puts "3. Xoá phương tiện giao thông."
    puts "4. Tìm kiếm phương tiện."
    puts "5. Thoát khỏi chương trình."

    puts "Vui lòng nhập chức năng cần thực hiện: "
    n_265 = gets.to_i

    case n_265
    when 1
        puts "1. Thêm mới Ô tô."
        puts "2. Thêm mới Xe máy."
        puts "3. Thêm mới xe tải."
        puts "Vui lòng chọn: "
        n1_265 = gets.to_i
        case n1_265
        when 1
            while true
                puts "Nhập mã xe ô tô: "
                id_car = gets
                if quanLyPhuongTien.checkID(id_car) == 0
                    puts "Mã xe đã tồn tại! Vui lòng nhập lại."
                else 
                    id = id_car
                    break
                end
            end
            puts "Nhập hãng sản xuất: "
            hangSanXuat = gets
            puts "Nhập năm sản xuất: "
            namSanXuat = gets
            puts "Nhập dòng xe: "
            dongXe = gets
            puts "Nhập giá bán: "
            giaBan = gets
            puts "Nhập biển số: "
            bienXo = gets
            puts "Nhập màu xe: "
            mauXe = gets
            puts "Nhập số chỗ ngồi: "
            soChoNgoi = gets
            puts "Nhập Kiểu động cơ: "
            kieuDongCo = gets
            puts "Nhập Nhiên liệu: "
            nhienLieu = gets 
            puts "Nhập số túi khí: "
            soTuiKhi = gets
            puts "Nhập ngày đăng kiểm: "
            ngayDangKiem = gets
            oto_265 = Oto.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienXo, mauXe,soChoNgoi,kieuDongCo,nhienLieu,soTuiKhi, ngayDangKiem)
            quanLyPhuongTien.addTransport(oto_265)
        when 2
            while true
                puts "Nhập mã xe máy: "
                id_moto = gets
                if quanLyPhuongTien.checkID(id_moto) == 0
                    puts "Mã xe đã tồn tại! Vui lòng nhập lại."
                else 
                    id = id_moto
                    break
                end
            end
            puts "Nhập hãng sản xuất: "
            hangSanXuat = gets
            puts "Nhập năm sản xuất: "
            namSanXuat = gets
            puts "Nhập dòng xe: "
            dongXe = gets
            puts "Nhập giá bán: "
            giaBan = gets
            puts "Nhập biển số: "
            bienXo = gets
            puts "Nhập màu xe: "
            mauXe = gets
            puts "Nhập công suất: "
            congSuat = gets
            puts "Nhập dung tích bình xăng: "
            dungTichBinhXang = gets
            moto_265 = XeMay.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienXo, mauXe, congSuat, dungTichBinhXang)
            quanLyPhuongTien.addTransport(moto_265)
        when 3
            while true
                puts "Nhập mã xe tải: "
                id_trunk = gets
                if quanLyPhuongTien.checkID(id_trunk) == 0
                    puts "Mã xe đã tồn tại! Vui lòng nhập lại."
                else 
                    id = id_trunk
                    break
                end
            end
            puts "Nhập hãng sản xuất: "
            hangSanXuat = gets
            puts "Nhập năm sản xuất: "
            namSanXuat = gets
            puts "Nhập dòng xe: "
            dongXe = gets
            puts "Nhập giá bán: "
            giaBan = gets
            puts "Nhập biển số: "
            bienXo = gets
            puts "Nhập màu xe: "
            mauXe = gets
            puts "Nhập trọng tải: "
            trongTai = gets
            trunk_265 = XeTai.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienXo, mauXe,trongTai)
            quanLyPhuongTien.addTransport(trunk_265)
        end
    when 2
        puts "+++++++++++++ DANH SÁCH THÔNG TIN TẤT CẢ CÁC PHƯƠNG TIỆN GIAO THÔNG +++++++++++++"
        quanLyPhuongTien.showInformation
    
    when 3
        puts "Nhập mã phương tiện giao thông cần xoá: "
        id_265 = gets
        quanLyPhuongTien.deleteTransportByID(id_265)

    when 4
        puts "1. Tìm kiếm theo theo hãng sản xuất."
        puts "2. Tìm kiếm theo màu."
        puts "3. Tìm kiếm theo biển số."
        puts "Vui lòng chọn tác vụ: "
        n = gets.to_i
        case n
        when 1
            puts "Vui lòng nhập hãng sản xuất: "
            hangSX = gets
            result = quanLyPhuongTien.timKiemTheoHangSX(hangSX)
            result.each do |item|
                item.showInfo
            end
        when 2
            puts "Vui lòng nhập màu xe: "
            mauXe = gets
            result = quanLyPhuongTien.timKiemTheoMau(mauXe)
            result.each do |item|
                item.showInfo
            end
        when 3
            puts "Vui lòng nhập biển số: "
            bienSo = gets
            result = quanLyPhuongTien.timKiemTheoBienSo(bienSo)
            result.each do |item|
                item.showInfo
            end
        end

    when 5
        exit()
    else
        puts "Không hợp lệ!"
    end
end
