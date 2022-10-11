class CBGV
    @@list = []
  
    def add(value)
      @@list <<  value
    end
  
    def remove(value)
      @@list.delete_if { |element| element.maSoGiaoVien == value }
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
  
    def salary(id)
      _value = @@list.filter { |element| element.maSoGiaoVien == id}
      if (!_value[0])
        return 0
      end
      return _value[0].luongCung - _value[0].luongThuong - _value[0].tienPhat
    end
  
  end

  class GiaoVien
    attr_accessor :luongCung,
                  :luongThuong,
                  :tienPhat,
                  :luongThucLinh,
                  :hoTen,
                  :tuoi,
                  :queQuan,
                  :maSoGiaoVien
  
    def initialize(luongCung, luongThuong, tienPhat, luongThucLinh, hoTen, tuoi, queQuan, maSoGiaoVien)
        @luongCung = luongCung.to_f
        @luongThuong =  luongThuong.to_f
        @tienPhat = tienPhat.to_f
        @luongThucLinh = luongThucLinh.to_f
        @hoTen = hoTen
        @tuoi = tuoi.to_i
        @queQuan = queQuan
        @maSoGiaoVien = maSoGiaoVien.to_s
    end
  
    def log
      return " Giáo Viên {
               lương cứng: #{@luongCung},
               lương thưởng: #{@luongThuong},
               tiền phạt: #{@tienPhat},
               lương chính thức: #{@luongThucLinh},
               họ tên: #{@hoTen},
               tuổi: #{@tuoi},
               quê quán: #{@queQuan},
               ma số giáo viên: #{@maSoGiaoVien}
      }"
    end
  
  end

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

