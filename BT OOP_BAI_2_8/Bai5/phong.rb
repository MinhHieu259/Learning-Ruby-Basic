class Phong
  attr_accessor :loaiPhong, :gia

  def initialize(loaiPhong, gia)
    @loaiPhong = loaiPhong
    @gia  = gia.to_f
  end
end
