class ManagerTeacher 
    attr_accessor :teachers_265
    def initialize()
        @teachers_265 = []
    end
    
    def add(teachers_265)
        @teachers_265 << teachers_265
    end

    def deleteById(id_265)
        if @teachers_265.find{|item| item.id_265 == id_265}
            @teachers_265.reject! { |e| e.id_265 == id_265 }
            return true
        end
        return false
    end

    def getSalary(id_265)
        teacher = @teachers_265.find{|item| item.id_265 == id_265}
        if teacher.nil?
            return 0
        end
        return teacher.realSalary_265
    end

    def show
        @teachers_265.each{ |teacher| puts teacher.toString}
    end
end