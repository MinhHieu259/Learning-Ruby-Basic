class PhuongTien
    attr_accessor :id_120, :hang_120, :namsx_120, :dongxe_120, :giaban_120, :bienso_120, :mauxe_120

    def initialize(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120)
        @id_120 = id_120
        @hang_120 = hang_120
        @namsx_120 = namsx_120
        @dongxe_120 = dongxe_120
        @giaban_120 = giaban_120
        @bienso_120 = bienso_120
        @mauxe_120 = mauxe_120
    end
end

class Oto < PhuongTien
    attr_accessor :soChoNgoi_120, :kieuDongCo_120, :nhienLieu_120, :soTuiKhi_120, :ngayDangKiem_120

    def initialize(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, soChoNgoi_120, kieuDongCo_120, nhienLieu_120, soTuiKhi_120, ngayDangKiem_120)
        super(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120)
        @soChoNgoi_120 = soChoNgoi_120
        @kieuDongCo_120 = kieuDongCo_120
        @nhienLieu_120 = nhienLieu_120
        @soTuiKhi_120 = soTuiKhi_120
        @ngayDangKiem_120 = ngayDangKiem_120
    end
end

class XeMay < PhuongTien
    attr_accessor :congSuat_120, :dungTichXang_120

    def initialize(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, congSuat_120, dungTichXang_120)
        super(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120)
        @congSuat_120 = congSuat_120
        @dungTichXang_120 = dungTichXang_120
    end
end

class XeTai < PhuongTien
    attr_accessor :trongTai_120

    def initialize(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, trongTai_120)
        super(id_120, hang_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120)
        @trongTai_120 = trongTai_120
    end
end

class QuanLyPTGT
    public PhuongTiens = []

    def initialize()
        return PhuongTiens
    end

    def themPhuongTien(phuongTien)
        PhuongTiens << phuongTien
    end

    def xuatDanhSach()
        for phuongtien in PhuongTiens do
            puts "ID: #{phuongtien.id_120} HangSX: #{phuongtien.hang_120} Mau sac: #{phuongtien.mauxe_120} Bien so: #{phuongtien.bienso_120}"
        end
    end

    def XoaPhuongTien(id)
        for pt in PhuongTiens do
            if pt.id_120 == id
                PhuongTiens.delete(pt)
            end
        end
    end

    def timTheoHangSx(hangSX)
        return PhuongTiens.filter { |pt|pt.hang_120 == hangSX}
    end

    def timTheoMau(mau)
        return PhuongTiens.filter { |pt|pt.mauxe_120 == mau}
    end

    def timTheoBienSo(bienSo)
        return PhuongTiens.filter { |pt|pt.bienso_120 == bienSo}
    end
end

quanly = QuanLyPTGT.new()
while true
    puts "----------------------------------------"
    puts "Quan ly cac phuong tien giao thong"
    puts "1. Them phuong tien giao thong"
    puts "2. Hien thi danh sach cac phuong tien"
    puts "3. Xoa phuong tien theo ID"
    puts "4. Tim Phuong tien"
    puts "5. Thoat"
    puts "----------------------------------------"
    print "Nhap lua chon cua ban: "
    line_120 = gets.to_i
    case line_120
    when 1
        puts "1. Them Oto"
        puts "2. Them Xe may"
        puts "3. Them xe tai"
        print "Nhap loai xe can them: "
        loai_xe_120 = gets.to_i
        case loai_xe_120
        when 1
            print "Nhap ID: "
            id_120 = gets.to_s
            print "Nhap hang san xuat: "
            hangsx_120 = gets.to_s
            print "Nhap nam san xuat: "
            namsx_120 = gets.to_s
            print "Nhap dong xe: "
            dongxe_120 = gets.to_s
            print "Nhap gia ban: "
            giaban_120 = gets.to_s
            print "Nhap bien so: "
            bienso_120 = gets.to_s
            print "Nhap mau xe: "
            mauxe_120 = gets.to_s
            print "Nhap so cho ngoi: "
            sochongoi_120 = gets.to_s
            print "Nhap kieu dong co: "
            kieudongco_120 = gets.to_s
            print "Nhap nhien lieu: "
            nhienlieu_120 = gets.to_s
            print "Nhap so tui khi: "
            sotuikhi_120 = gets.to_s
            print "Nhap ngay dang kiem: "
            ngaydangkiem_120 = gets.to_s

            xeOto = Oto.new(id_120, hangsx_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, sochongoi_120, kieudongco_120, nhienlieu_120, sotuikhi_120, ngaydangkiem_120)
            quanly.themPhuongTien(xeOto)
            puts "Them phuong tien thanh cong"
        when 2
            print "Nhap ID: "
            id_120 = gets.to_s
            print "Nhap hang san xuat: "
            hangsx_120 = gets.to_s
            print "Nhap nam san xuat: "
            namsx_120 = gets.to_s
            print "Nhap dong xe: "
            dongxe_120 = gets.to_s
            print "Nhap gia ban: "
            giaban_120 = gets.to_s
            print "Nhap bien so: "
            bienso_120 = gets.to_s
            print "Nhap mau xe: "
            mauxe_120 = gets.to_s
            print "Nhap cong suat: "
            congsuat_120 = gets.to_s
            print "Nhap dung tich binh xang: "
            binhxang_120 = gets.to_s
            xeMay = XeMay.new(id_120, hangsx_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, congsuat_120, binhxang_120)
            quanly.themPhuongTien(xeMay)
            puts "Them phuong tien thanh cong"
        when 3
            print "Nhap ID: "
            id_120 = gets.to_s
            print "Nhap hang san xuat: "
            hangsx_120 = gets.to_s
            print "Nhap nam san xuat: "
            namsx_120 = gets.to_s
            print "Nhap dong xe: "
            dongxe_120 = gets.to_s
            print "Nhap gia ban: "
            giaban_120 = gets.to_s
            print "Nhap bien so: "
            bienso_120 = gets.to_s
            print "Nhap mau xe: "
            mauxe_120 = gets.to_s
            print "Nhap trong tai: "
            trongtai_120 = gets.to_s
            xeTai = XeTai.new(id_120, hangsx_120, namsx_120, dongxe_120, giaban_120, bienso_120, mauxe_120, trongtai_120)
            quanly.themPhuongTien(xeTai)
            puts "Them phuong tien thanh cong"
        else
            puts "Ban nhap sai"
        end
    when 2
        puts "Danh sach cac phuong tien: "
        quanly.xuatDanhSach()
    when 3
        print "Nhap ID phuong tien can xoa: "
        id_xoa_120 = gets.to_s
        quanly.XoaPhuongTien(id_xoa_120)
        puts ("Xoa phuong tien thanh cong")
        puts "Danh sach sau khi xoa: "
        quanly.xuatDanhSach()
    when 4
        puts "1. Tim phuong tien theo hang san xuat"
        puts "2. Tim phuong tien theo mau"
        puts "3. Tim phuong tien theo bien so"
        print "Nhap lua chon cua ban: "
        luachon_tim = gets.to_i
        case luachon_tim
        when 1
            print "Nhap hang san xuat can tim kiem: "
            hangsx_search = gets.to_s
            result_search = quanly.timTheoHangSx(hangsx_search)
            for phuongtien in result_search do
                puts "ID: #{phuongtien.id_120} HangSX: #{phuongtien.hang_120} Mau sac: #{phuongtien.mauxe_120} Bien so: #{phuongtien.bienso_120}"
            end
        when 2
            puts "Nhap mau sac can tim kiem: "
            mau_search = gets.to_s
            result_search = quanly.timTheoMau(mau_search)
            for phuongtien in result_search do
                puts "ID: #{phuongtien.id_120} HangSX: #{phuongtien.hang_120} Mau sac: #{phuongtien.mauxe_120} Bien so: #{phuongtien.bienso_120}"
            end
        when 3
            puts "Nhap bien so can tim kiem: "
            bienso_search = gets.to_s
            result_search = quanly.timTheoBienSo(bienso_search)
            for phuongtien in result_search do
                puts "ID: #{phuongtien.id_120} HangSX: #{phuongtien.hang_120} Mau sac: #{phuongtien.mauxe_120} Bien so: #{phuongtien.bienso_120}"
            end
        else
            puts "Ban nhap sai roi"
        end
    else
        break
    end
end