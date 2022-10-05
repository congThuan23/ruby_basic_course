# class  Document; end
load "./Document.rb"
class Book < Document
    attr_accessor :id_265, :publisher_265, :number_265, :author_265, :numberPage_265
    def initialize(id_265, publisher_265, number_265, author_265, numberPage_265)
        super(id_265, publisher_265, number_265)
        @author_265 = author_265
        @numberPage_265 = numberPage_265
    end

    def to_string
        print "Mã sách: ", @id_265, " | "
        print "NXB: ", @publisher_265, " | "
        print "Số bản phát hành: ", @number_265, " | "
        print "Tác giả: ", @author_265, " | "
        print "Số trang: ", @numberPage_265
    end
end