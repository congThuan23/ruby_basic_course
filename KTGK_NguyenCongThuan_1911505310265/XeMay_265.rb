# Họ tên: Nguyễn Công Thuận
# Mã SV: 1911505310265
load "./Xe_265.rb"

class XeMay < Xe
    attr_accessor :id_265, :hangSanXuat_265, :namSanXuat_265, :dongXe_265, :giaBan_265, :bienSo_265, :mauXe_265, :congSuat_265, :dungTichBinhXang_265
    def initialize(id_265, hangSanXuat_265, namSanXuat_265, dongXe_265, giaBan_265, bienSo_265, mauXe_265, congSuat_265, dungTichBinhXang_265)
        super(id_265, hangSanXuat_265, namSanXuat_265, dongXe_265, giaBan_265, bienSo_265, mauXe_265)
        @congSuat_265 = congSuat_265
        @dungTichBinhXang_265 = dungTichBinhXang_265
    end

    def showInfo
        puts "====== Xe Máy ======"
        super()
        puts "Công suất: #{@congSuat_265} | Dung tích bình săng: #{@dungTichBinhXang_265}"
    end
end