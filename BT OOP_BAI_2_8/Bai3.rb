class Candiate
    attr_accessor :id, :name, :address, :priority

    def initialize(id, name, address, priority)
        @id = id
        @name = name
        @address = address
        @priority = priority
    end
end

class CandiateA < Candiate
    attr_accessor :Subject
    
    MON_TOAN = "Toan"
    MON_LY = "Ly"
    MON_HOA = "Hoa"

    def initialize(id, name, address, priority)
        super(id, name, address, priority)
        @Subject = MON_TOAN + " - " + MON_LY + " - " + MON_HOA
    end 
end

class CandiateB < Candiate
    attr_accessor :Subject
    
    MON_TOAN = "Toan"
    MON_HOA = "Hoa"
    MON_SINH = "Sinh"

    def initialize(id, name, address, priority)
        super(id, name, address, priority)
        @Subject = MON_TOAN + " - " + MON_HOA + " - " + MON_SINH
    end 
end

class CandiateC < Candiate
    attr_accessor :Subject
    
    MON_VAN = "Van"
    MON_SU = "Su"
    MON_DIA = "Dia"

    def initialize(id, name, address, priority)
        super(id, name, address, priority)
        @Subject = MON_VAN + " - " + MON_SU + " - " + MON_DIA
    end 
end

class ManagerCandidate
    Candidates = []

    def initialize()
        return Candidates
    end

    def addCandidate(candidate)
        Candidates << candidate
    end

    def showInfor
        for cd in Candidates do
            puts "ID: #{cd.id} Name: #{cd.name} Address: #{cd.address} Priority: #{cd.priority}"
        end 
    end

    def searchByID(id)
        return Candidates.filter{|cd|cd.id == id}
    end
end

def publicInput(choose)
    print "Nhap ID: "
    id = gets.to_s    
    print "Nhap ten: "
    name = gets.to_s    
    print "Nhap dia chi: "
    address = gets.to_s    
    print "Nhap uu tien: "
    priotity = gets.to_s
    case choose
    when 1
        return CandiateA.new(id, name, address, priotity)
    when 2
        return CandiateB.new(id, name, address, priotity)
    when 3
        return CandiateC.new(id, name, address, priotity)
    end
end

manager = ManagerCandidate.new()
while true
    puts "----------------------------------------"
    puts "Quan ly thi sinh su thi dai hoc"
    puts "1. Them moi thi sinh"
    puts "2. Hien thi thong tin va khoi cua thi sinh"
    puts "3. Tim kiem theo so bao danh"
    puts "4. Thoat"
    puts "----------------------------------------"
    print "Nhap lua chon cua ban: "
    line = gets.to_i
    case line
    when 1
        puts "1. Them thi sinh khoi A"
        puts "2. Them thi sinh khoi B"
        puts "3. Them thi sinh khoi C"
        print "Nhap lua chon cua ban: "
        choose = gets.to_i
        case choose
        when 1
            manager.addCandidate(publicInput(1))
        when 2
            manager.addCandidate(publicInput(2))
        when 3
            manager.addCandidate(publicInput(3))
        else
            puts "Nhap sai"
        end
    when 2
        puts "Danh sach cac thi sinh"
        manager.showInfor()
    when 3
        puts "--Tim kiem theo so bao danh--"
        print "Nhap so bao danh: "
        search_id = gets.to_s
        for rs in manager.searchByID(search_id) do
            puts "ID: #{rs.id} Name: #{rs.name} Address: #{rs.address} Priority: #{rs.priority}"
        end
    else
        break
    end
end