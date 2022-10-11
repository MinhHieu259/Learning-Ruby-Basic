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
