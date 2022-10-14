class PhanSo
    attr_accessor :tu_120, :mau_120

    def initialize(tu_120, mau_120)
        @tu_120 = tu_120.to_f
        @mau_120 = mau_120.to_f
    end

    def timUSCLN(a_120, b_120)
        while a_120 !=b_120
            if a_120 > b_120
                a_120-=b_120
            else
                b_120-=a_120
            end
        end
        return a_120
    end

    def toiGianPhanSo()
        i = timUSCLN(@tu_120, @mau_120)
        @tu_120 = @tu_120 / i
        @mau_120 = @mau_120 / i
    end

    def congPhanSo(ps)
        ts = @tu_120 * ps.mau_120 + ps.tu_120 * @mau_120
        ms = @mau_120 * ps.mau_120
        phanSoTong = PhanSo.new(ts, ms)
        phanSoTong.toiGianPhanSo()
        puts "Tong hai phan so: #{phanSoTong.tu_120} / #{phanSoTong.mau_120}"
    end

    def truPhanSo(ps)
        ts = @tu_120 * ps.mau_120 - ps.tu_120 * @mau_120
        ms = @mau_120 * ps.mau_120
        phanSoHieu = PhanSo.new(ts, ms)
        phanSoHieu.toiGianPhanSo()
        puts "Hieu hai phan so: #{phanSoHieu.tu_120} / #{phanSoHieu.mau_120}"
    end

    def nhanPhanSo(ps)
        ts = @tu_120 * ps.tu_120
        ms = @mau_120 * ps.tu_120
        phanSoTich = PhanSo.new(ts, ms)
        phanSoTich.toiGianPhanSo()
        puts "Tich hai phan so: #{phanSoTich.tu_120} / #{phanSoTich.mau_120}"
    end

    def chiaPhanSo(ps)
        ts = @tu_120 * ps.mau_120
        ms = @mau_120 * ps.tu_120
        phanSoThuong = PhanSo.new(ts, ms)
        phanSoThuong.toiGianPhanSo()
        puts "Thuong hai phan so: #{phanSoThuong.tu_120} / #{phanSoThuong.mau_120}"
    end
end 

class PhanSo2 < PhanSo
    def congPhanSo(ps)
        super
    end

    def truPhanSo(ps)
        super
    end

    def nhanPhanSo(ps)
        super
    end

    def chiaPhanSo(ps)
        super
    end
end

phanSo1 = PhanSo2.new(16, 3)
phanSo2 = PhanSo2.new(4, 8)
phanSo1.congPhanSo(phanSo2)
phanSo1.truPhanSo(phanSo2)
phanSo1.nhanPhanSo(phanSo2)
phanSo1.chiaPhanSo(phanSo2)
