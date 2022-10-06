class Document
    attr_accessor :id_120, :nxb_120, :number_120

    def initialize(id_120, nxb_120, number_120)
        @id_120 = id_120
        @nxb_120 = nxb_120
        @number_120 = number_120
    end
end

class Book < Document
    attr_accessor :author_120, :numberPage_120

    def initialize(id_120, nxb_120, number_120, author_120, numberPage_120)
        super(id_120, nxb_120, number_120)
        @author_120 = author_120
        @numberPage_120 = numberPage_120
    end
end

class Journal < Document
    attr_accessor :issueNumber_120, :monthIssue

    def initialize(id_120, nxb_120, number_120, issueNumber_120, monthIssue)
        super(id_120, nxb_120, number_120)
        @issueNumber_120 = issueNumber_120
        @monthIssue = monthIssue
    end
end

class Newspaper < Document
    attr_accessor :dayIssue
  
    def initialize(id_120, nxb_120, number_120, dayIssue)
        super(id_120, nxb_120, number_120)
        @dayIssue = dayIssue
    end
end

class ManagerDocument 
    public Documents = []

    def initialize()
        return Documents
    end

    def addDocument(document_120)
        Documents << document_120
    end

    def findByID(id_120)
        return Documents.filter { |dcm|dcm.id_120 == id_120}
    end

    def deleteDocument(id_120)
        for dcm in Documents do
            if dcm.id_120 == id_120
                Documents.delete(dcm)
            end
        end
    end

    def displayDocument()
        for document_120 in Documents do
            puts("ID: #{document_120.id_120} - NXB: #{document_120.nxb_120} - Number: #{document_120.number_120}") 
        end
    end

    def searchByBook()
        return Documents.filter { |dcm|dcm.class == Book}
    end

    
    def searchByNewspaper()
        return Documents.filter { |dcm|dcm.class == Newspaper}
    end

    
    def searchByJournal()
        return Documents.filter { |dcm|dcm.class == Journal}
    end
end

managerDocument = ManagerDocument.new()
while true
    puts "Application Manager Document"
    puts "1. Insert Document"
    puts "2. Search document by category"
    puts "3. Show information documents"
    puts "4. To remove document by id"
    puts "5. Exit"
    print "Input your choose: "
    line_120 = gets.to_i
    case line_120
    when 1
        puts "1. Insert Book"
        puts "2. Insert Newspaper"
        puts "3. Insert Journal"
        print "Input your choose: "
        typeDoc = gets.to_i
        case typeDoc
        when 1
            print "Input ID: "
            id_120 = gets.to_i
            print "Input NXB: "
            nxb_120 = gets.to_s
            print "Input number: "
            number_120 = gets.to_s
            print "Input author: "
            author_120 = gets.to_s
            print "Input page number: "
            pagenumber_120 = gets.to_i
            book = Book.new(id_120, nxb_120, number_120, author_120, pagenumber_120)
            managerDocument.addDocument(book)
        when 2
            print "Input ID: "
            id_120 = gets.to_i
            print "Input NXB: "
            nxb_120 = gets.to_s
            print "Input number: "
            number_120 = gets.to_s
            print "Enter Day issue: "
            day_issue = gets.to_s
            newspaper = Newspaper.new(id_120, nxb_120, number_120, day_issue)
            managerDocument.addDocument(newspaper)
        when 3
            print "Input ID: "
            id_120 = gets.to_i
            print "Input NXB: "
            nxb_120 = gets.to_s
            print "Input number: "
            number_120 = gets.to_s
            print "Enter issue number: "
            issue_number_120 = gets.to_s
            print "Enter Month issue: "
            month_issue_120 = gets.to_s
            journal = Journal.new(id_120, nxb_120, number_120, issue_number_120, month_issue_120)
            managerDocument.addDocument(journal)
        else
            puts "Nhap sai"
        end
    when 2
        puts "1. Search Book"
        puts "2. Search Newspaper"
        puts "3. Search Journal"
        print "Input your choose: "
        choose_search = gets.to_i
        case choose_search
        when 1
            for rs in managerDocument.searchByBook() do
                puts "ID: #{rs.id_120} - NXB: #{rs.nxb_120} - Number: #{rs.number_120}"
            end
        when 2
            for rs in managerDocument.searchByNewspaper() do
                puts "ID: #{rs.id_120} - NXB: #{rs.nxb_120} - Number: #{rs.number_120}"
            end
        when 3
            for rs in managerDocument.searchByJournal() do
                puts "ID: #{rs.id_120} - NXB: #{rs.nxb_120} - Number: #{rs.number_120}"
            end
        else
            puts "Input Error"
        end
    when 3
        puts "List of Documents"
        managerDocument.displayDocument()
    when 4
        print "Enter id of document want to remove: "
        id_remove_120 = gets.to_i
        managerDocument.deleteDocument(id_remove_120)
        managerDocument.displayDocument()
    else
        puts "Exit"
    end
end