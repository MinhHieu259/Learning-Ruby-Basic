class Nguoi
  attr_accessor :hoTen, :tuoi, :soChungMinhNhanDan, :phong, :soNgayThue

  def initialize(hoTen, tuoi, soChungMinhNhanDan, phong, soThue)
      @hoTen = hoTen
      @tuoi = tuoi
      @soChungMinhNhanDan = soChungMinhNhanDan
      @phong = phong
      @soNgayThue = soThue
  end


  def log
    return "
    Họ tên: #{@hoTen},
    Tuổi: #{@tuoi},
    CMND/CCCD: #{@soChungMinhNhanDan},
    Phòng: #{@phong.log}
    Số thuê: #{@soNgayThue}
    "
  end
end
