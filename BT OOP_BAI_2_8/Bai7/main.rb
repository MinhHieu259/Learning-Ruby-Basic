require_relative 'giao_vien'
require_relative 'cbgv'

cbgv = CBGV.new


while true
  puts "--------------- Menu ---------------"
  puts "Quản lý cán bộ"
  puts "1. Thêm giáo viên"
  puts "2. Hiện xoá giáo viên"
  puts "3. Lương thực lĩnh cho giáo viên"
  puts "4. Hiển thị"
  puts "5. Thoát khỏi chương trình"
  puts "-------------------------------------"
  puts "Mời bạn chọn: "
  number = gets.chomp.downcase
  case number
  when "1"
    puts "Nhập mã số giáo viên"
    ms = gets
    puts "Nhập họ và tên"
    ten = gets
    puts "Nhập tuổi"
    tuoi = gets.to_i
    puts "Nhập quê quán"
    queQuan = gets
    puts "Nhập lương cứng"
    luongThuong = gets
    puts "Nhập lương thưởng"
    luongCung = gets
    puts "Nhập tiền phạt"
    tienPhat = gets
    puts "Nhập lương thực lĩnh"
    luongThucLinh = gets

    cbgv.add(
      GiaoVien.new(luongCung,luongThuong,tienPhat,luongThucLinh,ten, tuoi, queQuan, ms)
    )
  when "2"
    puts "Nhập mã số giáo viên"
    ms = gets
    cbgv.remove(ms);
  when "3"
    puts "Nhập mã số giáo viên"
    ms = gets
    puts "Lương thực: #{cbgv.salary(ms)}"
  when "4"
    cbgv.show()
  else
    puts "Bạn có muốn thoát không. Nhấn phím Y để thoát"
    keyWord_264 = gets.chomp.downcase
    if(keyWord_264 == 'y')
      puts "Cảm ơn bạn!! 😊"
      break
    end
  end

end

