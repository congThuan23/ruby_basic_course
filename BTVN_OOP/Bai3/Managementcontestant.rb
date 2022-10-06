load "./Contestant.rb"
load "./ContestantA.rb"
load "./ContestantB.rb"
load "./ContestantC.rb"

class Managementcontestant
    def initialize()
        @contestant_265 = []
    end
    
    def addContestant(contestaint_265)
        @contestant_265  << contestaint_265
    end

    def showContestant()
        @contestant_265.each do |item|
            item.to_string
        end
    end

    def searchById(id)
        @contestant_265.each do |item|
            if item.id_265.include?(id)
                item.to_string
            end
        end
    end
end