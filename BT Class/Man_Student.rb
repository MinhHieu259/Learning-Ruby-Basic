class Man
    attr_accessor :name, :genders, :heights, :weight, :phone

    def initialize(name, genders, heights, weight, phone)
        @name = name
        @genders = genders
        @heights = heights
        @weight = weight
        @phone = phone
    end 
end

class Student < Man
    attr_accessor :school, :student_id, :classs, :grade

    def initialize(name, genders, heights, weight, phone, school, student_id, classs, grade)
        super(name, genders, heights, weight, phone)
        @school = school
        @student_id = student_id
        @classs = classs
        @grade = grade.to_f
    end

    def print_student()
        puts "Name: #{@name}"
    end 
end 

def printArrayData(arrays)
    for item in arrays do
        puts "Name: #{item.name} - Grade = #{item.grade}"
    end
end

student1 = Student.new('Hieu 1', 'Nam', '70', '170', '0329568259', 'UTE', '123', '19T1', 4)
student2 = Student.new('Hieu 2', 'Nam', '70', '170', '0329568259', 'UTE', '123', '19T1', 10)
student3 = Student.new('Hieu 3', 'Nam', '70', '170', '0329568259', 'UTE', '123', '19T1', 7)

studentArray = []
studentArray << student1
studentArray << student2
studentArray << student3

studentArray.sort! { |a, b| b.grade <=> a.grade }
printArrayData(studentArray)


