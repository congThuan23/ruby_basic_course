# Họ tên: Nguyễn Công Thuận
# Mã SV: 1911505310265

class Xe
    attr_accessor :id_265, :hangSanXuat_265, :namSanXuat_265, :dongXe_265, :giaBan_265, :bienSo_265, :mauXe_265
    def initialize(id_265, hangSanXuat_265, namSanXuat_265, dongXe_265, giaBan_265, bienSo_265, mauXe_265)
        @id_265 = id_265
        @hangSanXuat_265 = hangSanXuat_265
        @namSanXuat_265 = namSanXuat_265
        @dongXe_265 = dongXe_265
        @giaBan_265 = giaBan_265
        @bienSo_265 = bienSo_265
        @mauXe_265 = mauXe_265
    end

    def showInfo
        puts "ID: #{@id_265} | Hãng sản xuất: #{@hangSanXuat_265} | Năm sản xuất: #{@namSanXuat_265}"
        puts "Dòng xe: #{@dongXe_265} | Giá bán: #{@giaBan_265} | Biển số: #{@bienSo_265} | Màu xe: #{@mauXe_265}"
    end
end