class PhongA < Phong
  def initialize()
    super("A", 500)
  end

  def log
    return "{
      Phong A { Loại phòng: #{@loaiPhong}, Giá: #{@gia}
    }"
  end
end
