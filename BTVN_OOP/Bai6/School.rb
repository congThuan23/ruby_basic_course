class School
    attr_accessor :students_265
    def initialize()
        @students_265 = []
    end
    
    def add(students_265)
        @students_265 << students_265
    end

    def getStudent20YearOld
        return @students_265.select{|item| item.age_265 == 20}
    end

    def countStudent23YearOldInDN
        return @students_265.count {|item| item.age_265 == 23 && item.hometown_265 == "Da Nang"}
    end
end