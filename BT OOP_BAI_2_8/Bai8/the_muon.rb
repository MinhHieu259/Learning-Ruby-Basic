class TheMuon
  attr_accessor :maPhieuMuon,
                :ngayMuon,
                :hanTra,
                :soHieuSach,
                :sinhVien

  def initialize(maPhieuMuon, ngayMuon, hanTra, soHieuSach, sinhVien)
    @maPhieuMuon = maPhieuMuon
    @ngayMuon = ngayMuon
    @hanTra = hanTra
    @soHieuSach = soHieuSach
    @sinhVien = sinhVien
  end

  def log
    return "
    Thẻ mượn: {
      #{@sinhVien.log()}
      mã phiểu mượn: #{@maPhieuMuon},
      ngày mượn: #{@ngayMuon},
      hạn trả: #{@hanTra},
      số hiệu sách: #{@soHieuSach},
    }
    "
  end
end
