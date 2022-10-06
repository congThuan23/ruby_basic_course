load "./Contestant.rb"

class ContestantA < Contestant
    attr_accessor :id_265, :name_265, :address_265, :priority_265, :math_265, :physics_265, :chemistry_265
    def initialize(id_265, name_265, address_265, priority_265, math_265, physics_265, chemistry_265)
        super(id_265, name_265, address_265, priority_265)
        @math_265 = math_265
        @physics_265 = physics_265
        @chemistry_265 = chemistry_265
    end

    def to_string
        print "Số báo danh thí sinh khối A: ", @id_265, " | "
        print "Họ tên: ", @name_265, " | "
        print "Địa chỉ: ", @address_265, " | "
        print "Mức ưu tiên: ", @priority_265, " | "
        print "Điểm môn toán: ", @math_265 , " | "
        print "Điểm môn lý: ", @physics_265 , " | "
        print "Điểm môn hoá: ", @chemistry_265
    end
end