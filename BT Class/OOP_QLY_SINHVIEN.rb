class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
end

class Student < Human
    attr_accessor :toan, :ly, :hoa, :everage

    def initialize(name, hair, weight, height, age, phone, email, nation, toan, ly, hoa)
        super(name, hair, weight, height, age, phone, email, nation)
        @toan = toan.to_f
        @ly = ly.to_f
        @hoa = hoa.to_f
        @everage =  (@toan + @ly + @hoa) / 3.0
    end

end

def print_student(message, array_students)
    puts "\n"
    puts "#{message}"
    for student in array_students do
        puts "Name: #{student.name} - Everage = #{student.everage}"
    end
end

studentArrays = []
studentArraysTotal = []

student1 = Student.new('Nguyen Minh Hieu', 'Ngan', 70, 170, 21, '0774452227', 'mhieu7252@gmail.com', 'VietNam', 9, 8, 9)
student2 = Student.new('Ngo Van Thuan', 'Ngan', 70, 170, 21, '0329568259', 'mhieutt7252@gmail.com', 'VietNam', 5, 8, 7)
student3 = Student.new('Nguyen Thi Loan', 'Dai', 70, 170, 21, '0123456789', 'mhieu7y252@gmail.com', 'VietNam', 9, 8, 7)
student4 = Student.new('Nguyen Van Anh', 'Ngan', 70, 170, 21, '0123456789', 'mhieui7252@gmail.com', 'VietNam', 5, 6, 7)
student5 = Student.new('Nguyen Thi Bich Nhung', 'Dai', 70, 170, 21, '0123456789', 'mhieui7252@gmail.com', 'VietNam', 5, 10, 7)

studentArraysTotal << student1
studentArraysTotal << student2
studentArraysTotal << student3
studentArraysTotal << student4
studentArraysTotal << student5

studentArrays << student1
studentArrays << student2
studentArrays << student3

studentArrays.sort! { |a, b| b.everage <=> a.everage }

print_student("Danh sach sinh vien giam dan theo diem trung binh: ", studentArrays)
for itemDelete in studentArrays do
    studentArraysTotal.delete(itemDelete)
end

print_student("Danh sach sinh vien chua sap xep: ", studentArraysTotal)

