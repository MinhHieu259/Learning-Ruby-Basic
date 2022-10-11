class TruongHoc
  @@list = []

  def add(value)
    @@list <<  value
  end

  def remove(value)
    @@list.delete_if { |element| element.soChungMinhNhanDan == value }
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

  def showHaveValue(values)
    if values.empty?
      puts "Danh sách trống!!!"
      return
    end
    for element in values
      puts element.log()
    end
  end

  def find20()
    showHaveValue(@@list.filter { |element| element.tuoi == 20})
  end

  def find23AndDaNang()
    showHaveValue(@@list.filter { |element| (element.tuoi == 23) and element.queQuan.eql?("Da Nang")})
  end
end
