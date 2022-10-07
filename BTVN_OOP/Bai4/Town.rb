load "./Family.rb"

class Town < Family
    def initialize()
        @town_265 = []
    end
    
    def addTown(town_265)
        @town_265  << town_265
    end

    def checkId(id)
        @town_265.each do |item|
            if item.id_265 == id
                return 0
            end
        end
        return 1
    end
    
    def showTown()
        i = 1
        @town_265.each do |item|
            puts "+++++++ Hộ gia đình thứ #{i} +++++++"
            item.show
            i += 1
        end
    end
end