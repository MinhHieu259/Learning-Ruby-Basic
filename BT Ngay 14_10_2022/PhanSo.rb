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
        return phanSoTong
    end

    def truPhanSo(ps)
        ts = @tu_120 * ps.mau_120 - ps.tu_120 * @mau_120
        ms = @mau_120 * ps.mau_120
        phanSoHieu = PhanSo.new(ts, ms)
        phanSoHieu.toiGianPhanSo()
        return phanSoHieu
    end

    def nhanPhanSo(ps)
        ts = @tu_120 * ps.tu_120
        ms = @mau_120 * ps.tu_120
        phanSoTich = PhanSo.new(ts, ms)
        phanSoTich.toiGianPhanSo()
        return phanSoTich
    end

    def chiaPhanSo(ps)
        ts = @tu_120 * ps.mau_120
        ms = @mau_120 * ps.tu_120
        phanSoThuong = PhanSo.new(ts, ms)
        phanSoThuong.toiGianPhanSo()
        return phanSoThuong
    end
end 

class PhanSoOverride < PhanSo
    def congPhanSo(ps)
        result = super
        puts "Tong Hai phan so : #{result.tu_120} / #{result.mau_120}"
    end

    def truPhanSo(ps)
        result = super
        puts "Hieu Hai phan so : #{result.tu_120} / #{result.mau_120}"
    end

    def nhanPhanSo(ps)
        result = super
        puts "Tich Hai phan so : #{result.tu_120} / #{result.mau_120}"
    end

    def chiaPhanSo(ps)
        result = super
        puts "Thuong Hai phan so : #{result.tu_120} / #{result.mau_120}"
    end
end

phanSo1 = PhanSoOverride.new(16, 3)
phanSo2 = PhanSoOverride.new(4, 8)
phanSo1.congPhanSo(phanSo2)
phanSo1.truPhanSo(phanSo2)
phanSo1.nhanPhanSo(phanSo2)
phanSo1.chiaPhanSo(phanSo2)
