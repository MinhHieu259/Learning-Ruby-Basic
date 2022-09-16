print "Nhập số nguyên thứ 1 :"
so1 = gets.to_i
print "Nhập số nguyên thứ 2 :"
so2 = gets.to_i
print "Nhập số nguyên thứ 3 :"
so3 = gets.to_i

puts "Tăng dần " + [so1, so2, so3].sort.join(' ')
puts "Giảm dần " + [so1, so2, so3].sort.reverse.join(' ')

# def Swap(a, b)
#     tg = nil
#     tg = a
#     a = b
#     b = tg
# end

# def increase(so1, so2, so3) 
#     if so1 > so2 
#         Swap(so1, so2)
#     end
#     if so1 > so3
#         Swap(so1, so3)
#     end
#     if so2 > so3
#         Swap(so2, so3)
#     end
    
# puts "Tăng dần: #{so1} --> #{so2} --> #{so3}"
# end

# def decrease(so1, so2, so3) 
#     if so1 < so2 
#         Swap(so1, so2)
#     end
#     if so1 < so3
#         Swap(so1, so3)
#     end
#     if so2 < so3
#         Swap(so2, so3)
#     end
    
#     puts "Giảm dần: #{so1} --> #{so2} --> #{so3}"
# end










