myArray = []
loop do
    print("Nhap so add vao mang: ")
    number = gets.to_i
    break if number < 0
    myArray.push(number)
end

puts "Min in Arrays: #{myArray.min}"
puts "Max in Arrays: #{myArray.max}"

sum = 0
myArray.each{|n| sum+=n}
puts "Average in Arrays: #{sum/myArray.length}"