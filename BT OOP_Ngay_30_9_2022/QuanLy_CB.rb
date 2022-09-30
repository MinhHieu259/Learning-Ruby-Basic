class CanBo
    attr_accessor :hoTen_120, :tuoi_120, :gioi_120, :diaChi_120
    
    def initialize(hoTen_120, tuoi_120,gioi_120, diaChi_120)
        @hoTen_120 = hoTen_120
        @tuoi_120 = tuoi_120
        @gioi_120 =gioi_120
        @diaChi_120 = diaChi_120
    end
end

class CongNhan < CanBo
    attr_accessor :bac
    def initialize(hoTen_120, tuoi_120, gioi_120, diaChi_120, bac)
        super(hoTen_120, tuoi_120, gioi_120, diaChi_120)
        @bac = bac
    end
end

class KySu < CanBo
    attr_accessor :nganh
    def initialize(hoTen_120, tuoi_120, gioi_120, diaChi_120, nganh)
        super(hoTen_120, tuoi_120, gioi_120, diaChi_120)
        @nganh = nganh
    end
end

class NhanVien
    attr_accessor :congViec
    def initialize(hoTen_120, tuoi_120, gioi_120, diaChi_120, congViec)
        super(hoTen_120, tuoi_120, gioi_120, diaChi_120, congViec)
        @congViec = congViec
    end
end

class QLCB
    public CanBos = []
    def initialize()
        return CanBos
    end

    def themCanBo(canbo)
        CanBos << canbo
    end

    def timKiemTheoTen(name)
        return CanBos.filter { |cb|cb.hoTen_120 == name}
    end

    def xuatCanBo
        for cb in CanBos do
            puts "Ten: #{cb.hoTen_120} - Tuoi: #{cb.tuoi_120} - dia chi: #{cb.diaChi_120}"
        end
    end
end

qlcb = QLCB.new()
while true
    
puts "----- Quan ly can bo -----"
puts "1. Them moi can bo"
puts "2. Tim kiem can bo theo ten"
puts "3. In ra danh sach cac can bo"
puts "4. Thoat"
print "Nhap lua chon cua ban: "
luaChon = gets.to_i


case luaChon
when 1
    puts "1. Them ky su"
    puts "2. Them cong nhan"
    puts "3. Them nhan vien"
    print "Nhap loai muon nhap: "
    loaiCb = gets.to_i
    case loaiCb
        when 1
            puts "Nhap ten: "
            ten = gets.to_s
            puts "Nhap tuoi: "
            tuoi_120 = gets.to_i
            puts "Nhap gioi tinh: "
            gioi_120 = gets.to_s
            puts "Nhap dia chi: "
            diaChi_120 = gets.to_s
            puts "Nhap nganh: "
            nganh = gets.to_s
            kySU = KySu.new(ten, tuoi_120, gioi_120, diaChi_120, nganh)
            qlcb.themCanBo(kySU)

        when 2
            puts "Nhap ten: "
            ten = gets.to_s
            puts "Nhap tuoi: "
            tuoi_120 = gets.to_i
            puts "Nhap gioi tinh: "
            gioi_120 = gets.to_s
            puts "Nhap dia chi: "
            diaChi_120 = gets.to_s
            puts "Nhap bac: "
            bac = gets.to_i
            congNhan = CongNhan.new(ten, tuoi_120, gioi_120, diaChi_120, bac)
            qlcb.themCanBo(congNhan)
        when 3
            puts "Nhap ten: "
            ten = gets.to_s
            puts "Nhap tuoi: "
            tuoi_120 = gets.to_i
            puts "Nhap gioi tinh: "
            gioi_120 = gets.to_s
            puts "Nhap dia chi: "
            diaChi_120 = gets.to_s
            puts "Nhap cong viec: "
            congViec = gets.to_i
            nhanVien = NhanVien.new(ten, tuoi_120, gioi_120, diaChi_120, congViec)
            qlcb.themCanBo(nhanVien)
        else 
            puts "Nhap sai"
    end
when 2
    puts "Nhap ten muon tim kiem: "
    name_search = gets.to_s
    result = qlcb.timKiemTheoTen(name_search)
    puts "Ket qua tim kiem: "
    for kq in result do
        puts "Ten: #{kq.hoTen_120 } - Tuoi: #{kq.tuoi_120}"
    end
when 3
    puts "Danh sach can bo: "
    qlcb.xuatCanBo()
else
    puts "thoat"
end
end

