print "Nhập cạnh a: "
a = gets.to_f
print "Nhập cạnh b: "
b = gets.to_f
print "Nhập cạnh c: "
c = gets.to_f


def is_triangle(a, b, c)
    if a + b <= c || a + c <= b ||  b + c <= a
        return 0
    end
    return 1
end

def di_cv(a, b, c)
    if is_triangle(a, b, c) == 0
        puts "Không phải là tam giác"
    elsif (a == b) && (b == c)
        puts "Đây là tam giác đều"
        puts ("Diện tích tam giác #{a**2 * Math.sqrt(3/4)}")
        puts ("Chu vi tam giác #{3*a}")
    elsif a * a + b * b == c * c || a * c + c * c == b * b || b * b + c * c == a * c
        puts "Đây là tam giác vuông"
        puts ("Diện tích tam giác #{1/2 * a*b}")
        puts ("Chu vi tam giác #{a+b+c}")
    else
        puts "Đây là tam giác thường"
        p = a+b+c
        puts ("Diện tích tam giác #{Math.sqrt(p*(p-a)*(p-b)*(p-c))}")
        puts ("Chu vi tam giác #{p}")
    end
end

di_cv(a, b, c)
