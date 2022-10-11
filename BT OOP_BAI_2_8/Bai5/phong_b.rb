class PhongB < Phong
  def initialize()
    super("B", 300)
  end

  def log
    return "{
      Phong B { Loại phòng: #{@loaiPhong}, Giá: #{@gia}
    }"
  end
end
