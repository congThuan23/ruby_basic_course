# Tên: Nguyễn Công Thuận
# Mã SV: 1911505310265

class PhanSo
    attr_accessor :tu, :mau
    def initialize(tu, mau)
        @tu = tu
        @mau = mau
    end

    def show
        if @mau == 1 || @tu == 0    
            return "#{@tu}"
        else
            return "#{@tu}/#{@mau}"
        end
    end

    def rutGon
        a = @tu
        b = @mau

        a = a.abs
        b = b.abs
        
        usln = 1
        if a == 0 || b==0
            usln = a+b
        else
            while a!=b
                if a>b
                    a = a-b
                else
                    b = b-a
                end
            end
            usln = a
        end
        @tu/=usln
        @mau/=usln
    end

    def +(obj)
        tuSo = self.tu*obj.mau + obj.tu*self.mau
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end

    def -(obj)
        tuSo = self.tu*obj.mau - obj.tu*self.mau
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end

    def *(obj)
        tuSo = self.tu*obj.tu
        mauSo = self.mau*obj.mau
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end

    def /(obj)
        tuSo = self.tu*obj.mau
        mauSo = self.mau*obj.tu
        ps = PhanSo.new(tuSo, mauSo)
        ps.rutGon
        return ps
    end
end

def congHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau + ps2.tu*ps1.mau
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def truHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau - ps2.tu*ps1.mau
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def nhanHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.tu
    mauSo = ps1.mau*ps2.mau
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def chiaHaiPhanSo(ps1, ps2)
    tuSo = ps1.tu*ps2.mau
    mauSo = ps1.mau*ps2.tu
    ps = PhanSo.new(tuSo, mauSo)
    ps.rutGon
    return ps
end

def nhapPhanSo
    print "Nhap tu so: "
    tu_265 = gets.to_i
    print "Nhap mau so:"
    mau_265 = gets.to_i
    while mau_265 == 0
        puts "Mau phai khac 0!"
        print "Nhap mau so:"
        mau_265 = gets.to_i
    end
    ps = PhanSo.new(tu_265, mau_265)
    return ps
end

puts "Nhap Phan so thu 1: "
ps1 = nhapPhanSo
puts "Nhap Phan so thu 2: "
ps2 = nhapPhanSo
puts ""
cong = congHaiPhanSo(ps1, ps2)
puts "+++ Ket qua cong hai phan so: #{ps1.show} + #{ps2.show} = #{cong.show}"
puts "+++ overloading operator + : #{(ps1+ps2).show}"
puts ""
tru = truHaiPhanSo(ps1, ps2)
puts "--- Ket qua tru hai phan so: #{ps1.show} - #{ps2.show} = #{tru.show}"
puts "--- overloading operator - : #{(ps1-ps2).show}"
puts ""
nhan = nhanHaiPhanSo(ps1, ps2)
puts "*** Ket qua nhan hai phan so: #{ps1.show} * #{ps2.show} = #{nhan.show}"
puts "*** overloading operator * : #{(ps1*ps2).show}"
puts ""
chia = chiaHaiPhanSo(ps1, ps2)
puts "/// Ket qua chia hai phan so: #{ps1.show} : #{ps2.show} = #{chia.show}"
puts "/// overloading operator / : #{(ps1/ps2).show}"