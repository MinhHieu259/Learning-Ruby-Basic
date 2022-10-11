require_relative 'hoc_sinh'
require_relative 'truong_hoc'

truongHoc = TruongHoc.new


while true
  puts "--------------- Menu ---------------"
  puts "Quản lý cán bộ"
  puts "1. Thêm học sinh"
  puts "2. Hiện thị các học sinh 20 tuổi."
  puts "3. Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN"
  puts "4. Hiển thị"
  puts "5. Thoát khỏi chương trình"
  puts "-------------------------------------"
  puts "Mời bạn chọn: "
  number = gets.chomp.downcase
  case number
  when "1"
    puts "Nhập họ và tên"
    ten = gets
    puts "Nhập tuổi"
    tuoi = gets.to_i
    puts "Nhập quê quán"
    queQuan = gets.chomp.downcase
    puts "Nhập lớp"
    lop = gets
    truongHoc.add(
      HocSinh.new(ten, tuoi, queQuan, lop)
    )
  when "2"
    truongHoc.find20
  when "3"
    truongHoc.find23AndDaNang
  when "4"
    truongHoc.show()
  else
    puts "Bạn có muốn thoát không. Nhấn phím Y để thoát"
    keyWord_264 = gets.chomp.downcase
    if(keyWord_264 == 'y')
      puts "Cảm ơn bạn!! 😊"
      break
    end
  end

end
