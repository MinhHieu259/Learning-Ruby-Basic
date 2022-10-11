class GiaoVien
  attr_accessor :luongCung,
                :luongThuong,
                :tienPhat,
                :luongThucLinh,
                :hoTen,
                :tuoi,
                :queQuan,
                :maSoGiaoVien

  def initialize(luongCung, luongThuong, tienPhat, luongThucLinh, hoTen, tuoi, queQuan, maSoGiaoVien)
      @luongCung = luongCung.to_f
      @luongThuong =  luongThuong.to_f
      @tienPhat = tienPhat.to_f
      @luongThucLinh = luongThucLinh.to_f
      @hoTen = hoTen
      @tuoi = tuoi.to_i
      @queQuan = queQuan
      @maSoGiaoVien = maSoGiaoVien.to_s
  end

  def log
    return " Giáo Viên {
             lương cứng: #{@luongCung},
             lương thưởng: #{@luongThuong},
             tiền phạt: #{@tienPhat},
             lương chính thức: #{@luongThucLinh},
             họ tên: #{@hoTen},
             tuổi: #{@tuoi},
             quê quán: #{@queQuan},
             ma số giáo viên: #{@maSoGiaoVien}
    }"
  end

end
