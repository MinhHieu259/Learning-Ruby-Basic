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
