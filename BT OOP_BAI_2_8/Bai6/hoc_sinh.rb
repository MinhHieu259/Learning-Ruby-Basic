class HocSinh
  attr_accessor :hoTen, :tuoi, :queQuan, :lop

  def initialize(hoTen, tuoi, queQuan, lop)
    @hoTen = hoTen
    @tuoi = tuoi
    @queQuan = queQuan
    @lop = lop
  end

  def log
    return  "
      Học sinh: {
         Họ tên: #{@hoTen}, tuổi: #{@tuoi}, quê quán: #{@queQuan}, lớp: #{@lop}
      }"
  end
end
