class SinhVien
  attr_accessor :hoTen,
                :tuoi,
                :lop

  def initialize(hoTen, tuoi, lop)
    @hoTen = hoTen
    @tuoi = tuoi
    @lop = lop
  end

  def log
    return  "
         họ tên: #{@hoTen}, tuổi: #{@tuoi}, lớp: #{@lop},
      "
  end
end
