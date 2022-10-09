class Hotel
    attr_accessor :persons_265
    def initialize()
        @persons_265 = []
    end
    
    def add(persons_265)
        @persons_265 << persons_265
    end

    def delete(passport_265)
        if @persons_265.find{|item| item.passport_265 == passport_265}
            @persons_265.reject! { |e| e.passport_265 == passport_265}
            return true
        end
        return false
    end

    def show
        @persons_265.each{ |person| puts person.toString}
    end

    def calculator(passport_265)
        person = @persons_265.find{|item| item.passport_265 == passport_265}
        if person.nil?
            return 0
        end
        return person.room_265.price_265 * person.numberRent_265
    end
end