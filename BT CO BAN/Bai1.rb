    myArray = []
    print("Nhập bao nhiêu số: ")
    quantity = gets.to_i
    for i in 0..quantity-1 do
        print("Nhập số thứ #{i}: ")
        number = gets.to_i
        myArray.push(number)
    end
   

    def min_max_everaged(myArray)
        puts("\n")
        puts("\n")
        puts "Min in Arrays: #{myArray.min}"
        puts "Max in Arrays: #{myArray.max}"
        puts "Everaged: #{everaged(myArray)}"
    end

    def everaged(myArray)
        sum = 0
        myArray.each{|n| sum+=n}
        return sum/myArray.length
    end

    min_max_everaged(myArray)


