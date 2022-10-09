load "./Room.rb"

class RoomC < Room
    def initialize()
        super("C", 100)
    end
    
    def toString
        return "Phòng loại C { #{super} }"
    end
end