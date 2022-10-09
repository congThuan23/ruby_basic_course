class Room
    attr_accessor :category_265, :price_265
    def initialize(category_265, price_265)
        @category_265 = category_265
        @price_265 = price_265
    end

    def toString
        return "Loại phòng = #{@category_265}, Giá = #{@price_265}"
    end
end