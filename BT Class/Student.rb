class Student
    attr_accessor :Grade1, :Grade2, :Grade3
    
    def initialize(diem1, diem2, diem3)
       @Grade1 = diem1.to_f
       @Grade2 = diem2.to_f
       @Grade3 = diem3.to_f
    end

    def everage_grage()
        puts("Everage = #{(@Grade1 + @Grade2 + @Grade3) / 3.0}")
    end 
end


student1 = Student.new('6', '7', '8')
student1.everage_grage