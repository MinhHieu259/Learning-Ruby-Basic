require_relative 'sinh_vien'
require_relative 'the_muon'
require_relative 'qlt'

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


