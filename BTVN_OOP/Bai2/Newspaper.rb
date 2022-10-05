load "./Document.rb"
class Newspaper < Document
    attr_accessor :id_265, :publisher_265, :number_265, :dayReissue_265
    def initialize(id_265, publisher_265, number_265, dayReissue_265)
        super(id_265, publisher_265, number_265)
        @dayReissue_265 = dayReissue_265
    end

    def to_string
        print "Mã báo: ", @id_265, " | "
        print "NXB: ", @publisher_265, " | "
        print "Số bản phát hành: ", @number_265, " | "
        print "Ngày phát hành: ", @dayReissue_265
    end
end