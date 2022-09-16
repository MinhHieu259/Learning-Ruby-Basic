class SinhVien
    attr_accessor :diemToan, :diemLy, :diemHoa
   
        def NhapTTSV
            print "Nhập điểm toán: "
            @diemToan = gets.to_f
            print "Nhập điểm lý: "
            @diemLy = gets.to_f
            print "Nhập điểm hóa: "
            @diemHoa = gets.to_f
        end

        def XuatThongTinSV
            puts("Điểm Toán = #{@diemToan}")
            puts("Điểm Lý = #{@diemLy}")
            puts("Điểm Hóa = #{@diemHoa}")
        end

        def everaged
            return (@diemToan + @diemLy + @diemHoa) / 3
        end
end


sinhvien = SinhVien.new
sinhvien.NhapTTSV
sinhvien.XuatThongTinSV
puts("Điểm trung bình = #{sinhvien.everaged}")

