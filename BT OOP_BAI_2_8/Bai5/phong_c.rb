class PhongC < Phong
  def initialize()
    super("C", 100)
  end

  def log
    return "{
      Phong C { Loại phòng: #{@loaiPhong}, Giá: #{@gia}
    }"
  end
end
