load "./Room.rb"

class RoomB < Room
    def initialize()
        super("B", 300)
    end
    
    def toString
        return "Phòng loại B { #{super} }"
    end
end