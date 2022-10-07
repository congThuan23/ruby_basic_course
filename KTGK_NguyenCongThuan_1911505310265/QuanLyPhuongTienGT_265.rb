# Họ tên: Nguyễn Công Thuận
# Mã SV: 1911505310265

load "./Xe_265.rb"
load "./Oto_265.rb"
load "./XeMay_265.rb"
load "./XeTai_265.rb"

class QuanLyPhuongTienGT
    def initialize()
        @transport_265 = []
    end

    def checkID(id_265)
        @transport_265.each do |item|
            if item.id_265 == id_265
                # bị trùng mã thì trả về 0
                return 0
            end
        end
        return 1
    end

    def addTransport(transport_265)
        @transport_265 << transport_265
    end

    def showInformation
        @transport_265.each do |item|
            item.showInfo
        end
    end

    def getTransportById(id_265)
        @transport_265.each do |item|
            if item.id_265 = id_265
                return item
            end
        end
    end

    def deleteTransportByID(id_265)
        transport_265 = getTransportById(id_265)
        @transport_265.delete(transport_265)
        puts "Đã xoá một phương tiện giao thông thành công!"
    end

    def timKiemTheoHangSX(hangSX_265)
        result = []
        @transport_265.each do |item|
            if item.hangSanXuat_265 == hangSX_265
                result << item
            end
        end
        return result
    end

    def timKiemTheoMau(mau_265)
        result = []
        @transport_265.each do |item|
            if item.mau_265 == mau_265
                result << item
            end
        end
        return result
    end

    def timKiemTheoBienSo(bienSo_265)
        result = []
        @transport_265.each do |item|
            if item.bienSo_265 == bienSo_265
                result << item
            end
        end
        return result
    end

end