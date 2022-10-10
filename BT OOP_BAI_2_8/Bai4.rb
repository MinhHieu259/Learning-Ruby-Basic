class Person
    attr_accessor :name, :age, :job, :passport

    def initialize(name, age, job, passport)
        @name = name
        @age = age
        @job = job
        @passport = passport
    end
end

class Family
    attr_accessor :persons, :address

    def initialize(persons, address)
        @persons = persons
        @address = address
    end
end

class Town
    Families = []
    def initialize()
        return Families
    end

    def addFamily(family)
        Families << family
    end

    def printFamily()
        for family in Families do
            puts "Dia chi: #{family.address}"
            for member in family.persons do
                puts "Ten: #{member.name}"
            end
        end
    end
end

town = Town.new()
print "Nhap so luong gia dinh can nhap: "
qty_family = gets.to_i
i = 0
Persons = []
while i < qty_family
    puts "Nhap dia chi: "
    address = gets.to_s
 
    Persons.clear
    
    print "Nhap so nguoi trong gia dinh: "
    num_members = gets.to_i
    j = 0
    while j < num_members
        print "Nhap ten: "
        name = gets.to_s
        print "Nhap tuoi: "
        age = gets.to_s
        print "Nhap nghe nghiep: "
        job = gets.to_s
        print "Nhap chung minh nhan dan: "
        passport = gets.to_s
        person = Person.new(name, age, job, passport)
        Persons << person
        j+=1
    end
    town.addFamily(Family.new(Persons, address))
    i +=1
end
town.printFamily()


