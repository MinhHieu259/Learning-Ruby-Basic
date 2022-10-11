class QLT
    @@list = []
  
    def add(value)
      @@list <<  value
    end
  
    def remove(value)
      @@list.delete_if { |element| element.maPhieuMuon == value }
    end
  
    def show
      if @@list.empty?
        puts "Danh sách trống!!!"
        return
      end
      num = 0
      for element in @@list
        puts element.log()
      end
    end
  end

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

  qlt = QLT.new

while true
  puts "--------------- Menu ---------------"
  puts "Quản lý cán bộ"
  puts "1. Thêm thẻ mượn"
  puts "2. Xoá thẻ mượn"
  puts "3. Hiển thị thông tin các thẻ mượn"
  puts "4. Thoát khỏi chương trình"
  puts "-------------------------------------"
  puts "Mời bạn chọn: "
  number = gets.chomp.downcase
  case number
  when "1"
    puts "Nhập họ tên"
    hoTen = gets
    puts "Nhập tuổi"
    tuoi = gets
    puts "Nhập lớp"
    lop = gets
    sinhVien = SinhVien.new(hoTen, tuoi, lop)

    puts "Nhập mã phiểu mượn"
    maPhieuMuon = gets
    puts "Nhập ngày mượn"
    ngayMuon = gets
    puts "Nhập hạn trả"
    hanTra = gets
    puts "Nhập số hiệu sách"
    soHieuSach = gets
    theMuon = TheMuon.new(maPhieuMuon, ngayMuon, hanTra, soHieuSach, sinhVien)
    qlt.add(theMuon)
  when "2"
    puts "Nhập mã phiếu mượn"
    input = gets
    qlt.remove(input);
  when "3"
    qlt.show()
  else
    puts "Bạn có muốn thoát không. Nhấn phím Y để thoát"
    keyWord_264 = gets.chomp.downcase
    if(keyWord_264 == 'y')
      puts "Cảm ơn bạn!! 😊"
      break
    end
  end

end


