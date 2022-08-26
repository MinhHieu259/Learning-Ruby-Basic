# 1. Viết lệnh hiển thị "Xin chào" + tên SV + MSV
puts "Xin chào Nguyễn Minh Hiếu, MSV: 1911505310120"

# 2. Nhập 1 số từ bàn phím, in ra số đó
puts "Nhập vào 1 số từ bàn phím:"
number = gets
puts "Số vừa nhập: #{number.to_i}" 

#3. So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn
def compare_number(number_1, number_2)
    if number_1 > number_2
        puts "Số lớn hơn là #{number_1.to_i}"
    elsif number_2 > number_1
        puts "Số lớn hơn là #{number_2.to_i}"
    else
        puts "Hai số bằng nhau"
    end
end

puts "Nhập vào số thứ nhất:"
number_a = gets
puts "Nhập vào số thứ hai:"
number_b = gets

compare_number(number_a, number_b)

