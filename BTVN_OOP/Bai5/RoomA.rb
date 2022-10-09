load "./Room.rb"

class RoomA < Room
    def initialize()
        super("A", 500)
    end
    
    def toString
        return "Phòng loại A { #{super} }"
    end
end