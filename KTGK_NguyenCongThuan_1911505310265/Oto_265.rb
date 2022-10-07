# Họ tên: Nguyễn Công Thuận
# Mã SV: 1911505310265
load "./Xe_265.rb"

class Oto < Xe
    attr_accessor :id_265, :hangSanXuat_265, :namSanXuat_265, :dongXe_265, :giaBan_265, :bienSo_265, :mauXe_265, :soChoNgoi_265, :kieuDongCo_265, :nhienLieu_265, :soTuiKhi_265, :ngayDangKiem_265
    def initialize(id_265, hangSanXuat_265, namSanXuat_265, dongXe_265, giaBan_265, bienSo_265, mauXe_265, soChoNgoi_265, kieuDongCo_265, nhienLieu_265, soTuiKhi_265, ngayDangKiem_265)
        super(id_265, hangSanXuat_265, namSanXuat_265, dongXe_265, giaBan_265, bienSo_265, mauXe_265)
        @soChoNgoi_265 = soChoNgoi_265
        @kieuDongCo_265 = kieuDongCo_265
        @nhienLieu_265 = nhienLieu_265
        @soTuiKhi_265 = soTuiKhi_265
        @ngayDangKiem_265 = ngayDangKiem_265
    end

    def showInfo
        puts "====== Xe Ô Tô ======"
        super()
        puts "Số chỗ ngồi: #{@soChoNgoi_265} | Kiểu động cơ: #{@kieuDongCo_265} | Nhiên liệu: #{@nhienLieu_265}"
        puts "Số túi khí:  #{@soTuiKhi_265} | Ngày đăng kiểm: #{@ngayDangKiem_265}"
    end
end