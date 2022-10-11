require_relative 'khach_san'
require_relative 'nguoi'
require_relative 'phong'
require_relative 'phong_a'
require_relative 'phong_b'
require_relative 'phong_c'

hotel = KhachSan.new


while true
  puts "--------------- Menu ---------------"
  puts "Quản lý cán bộ"
  puts "1. Thêm người thuê"
  puts "2. Xoá người thuê"
  puts "3. Tính tiền thuê phòng cho khách "
  puts "4. Hiển thị"
  puts "5. Thoát khỏi chương trình"
  puts "-------------------------------------"
  puts "Mời bạn chọn: "
  number = gets.chomp.downcase
  case number
  when "1"
    puts "Nhập họ và tên"
    ten = gets
    puts "Nhập tổi"
    tuoi = gets.to_i
    puts "Nhập CMND/CCCD"
    cmnd = gets
    puts  "================="
    puts "Chọn a: Thuê phòng A"
    puts "Chọn b: Thuê phòng B"
    puts "Chọn c: Thuê phòng C"
    puts  "================="
    choose = gets.chomp.downcase
    room = PhongA.new
    case choose
    when "a"
      room = PhongA.new
    when "b"
      room = PhongB.new
    when "c"
      room = PhongC.new
    end
    puts "Nhập số ngày thuê"
    soThue = gets.to_i
    hotel.add(
      Nguoi.new(ten, tuoi, cmnd, room, soThue)
    )
  when "2"
    puts "Nhập CMND/CCCD"
    cmnd = gets
    hotel.remove(cmnd);
  when "3"
    puts "Nhập CMND/CCCD"
    cmnd = gets
    puts "Thành tiền: #{hotel.calculator(cmnd)}"
  when "4"
    hotel.show()
  else
    puts "Bạn có muốn thoát không. Nhấn phím Y để thoát"
    keyWord_264 = gets.chomp.downcase
    if(keyWord_264 == 'y')
      puts "Cảm ơn bạn!! 😊"
      break
    end
  end

end

