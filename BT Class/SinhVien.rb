class SinhVien
    attr_accessor :diemToan, :diemLy, :diemHoa
   
        def initialize(diemToan, diemLy, diemHoa)
            @diemToan = diemToan
            @diemLy = diemLy
            @diemHoa = diemHoa
        end

        def thongTinSV
            puts("Điểm Toán = #{@diemToan}")
            puts("Điểm Lý = #{@diemLy}")
            puts("Điểm Hóa = #{@diemHoa}")
        end

        def everaged
            return (@diemToan + @diemLy + @diemHoa) / 3
        end
end

print "Nhập điểm toán: "
toan = gets.to_f
print "Nhập điểm lý: "
ly = gets.to_f
print "Nhập điểm hóa: "
hoa = gets.to_f

sinhvien = SinhVien.new(toan, ly, hoa)
sinhvien.thongTinSV
puts("Điểm trung bình = #{sinhvien.everaged}")

