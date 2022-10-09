class ManagerCard
    attr_accessor :cards_265
    def initialize()
        @cards_265 = []
    end
    
    def addCard(cards_265)
        @cards_265 << cards_265
    end

    def deleteCard(id_265)
        if @cards_265.find{|item| item.id_265 == id_265}
            @cards_265.reject! { |e| e.id_265 == id_265 }
            return true
        end
        return false
    end

    def showInfor
        @cards_265.each{ |card| puts card.toString}
    end
end