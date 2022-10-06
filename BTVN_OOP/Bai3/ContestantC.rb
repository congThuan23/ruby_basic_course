load "./Contestant.rb"

class ContestantC < Contestant
    attr_accessor :id_265, :name_265, :address_265, :priority_265, :literature_265, :history_265, :geography_265
    def initialize(id_265, name_265, address_265, priority_265, literature_265, history_265, geography_265)
        super(id_265, name_265, address_265, priority_265)
        @literature_265 = literature_265
        @history_265 = history_265
        @geography_265 = geography_265
    end

    def to_string
        print "Số báo danh thí sinh khối B: ", @id_265, " | "
        print "Họ tên: ", @name_265, " | "
        print "Địa chỉ: ", @address_265, " | "
        print "Mức ưu tiên: ", @priority_265, " | "
        print "Điểm môn Văn: ", @literature_265 , " | "
        print "Điểm môn Sử: ", @history_265 , " | "
        print "Điểm môn Địa: ", @geography_265
    end
end