load "./Document.rb"
class Journal < Document
    attr_accessor :id_265, :publisher_265, :number_265, :reissueNumber_265, :monthReissue_265
    def initialize(id_265, publisher_265, number_265, reissueNumber_265, monthReissue_265)
        super(id_265, publisher_265, number_265)
        @reissueNumber_265 = reissueNumber_265
        @monthReissue_265 = monthReissue_265
    end

    def to_string
        print "Mã tạp chí: ", @id_265, " | "
        print "NXB: ", @publisher_265, " | "
        print "Số bản phát hành: ", @number_265, " | "
        print "Số phát hành: ", @reissueNumber_265, " | "
        print "Tháng phát hành: ", @monthReissue_265
    end
end