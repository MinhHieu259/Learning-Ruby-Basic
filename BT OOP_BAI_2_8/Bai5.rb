class KhachSan
    @@list = []
  
    def add(value)
      @@list <<  value
    end
  
    def remove(value)
      @@list.delete_if { |element| element.soChungMinhNhanDan == value }
    end
  
    def findById(id)
      return @@list.filter { |element| element.soChungMinhNhanDan == id}
    end
  
    def show
      if @@list.empty?
        puts "Danh sách trống!!!"
        return
      end
      for element in @@list
        puts element.log()
      end
  
    end
  
    def calculator(value)
      _value = findById(value)[0]
  
      if (!_value)
        return 0
      end
      return _value.soNgayThue * _value.phong.gia
    end
  end

  class Nguoi
    attr_accessor :hoTen, :tuoi, :soChungMinhNhanDan, :phong, :soNgayThue
  
    def initialize(hoTen, tuoi, soChungMinhNhanDan, phong, soThue)
        @hoTen = hoTen
        @tuoi = tuoi
        @soChungMinhNhanDan = soChungMinhNhanDan
        @phong = phong
        @soNgayThue = soThue
    end
  
  
    def log
      return "
      Họ tên: #{@hoTen},
      Tuổi: #{@tuoi},
      CMND/CCCD: #{@soChungMinhNhanDan},
      Phòng: #{@phong.log}
      Số thuê: #{@soNgayThue}
      "
    end
  end

  class Phong
    attr_accessor :loaiPhong, :gia
  
    def initialize(loaiPhong, gia)
      @loaiPhong = loaiPhong
      @gia  = gia.to_f
    end
  end
  

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


  