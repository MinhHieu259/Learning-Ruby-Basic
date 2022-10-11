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
