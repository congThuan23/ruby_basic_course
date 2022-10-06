load "./Person.rb"

class Family < Person
    attr_accessor :name_265, :age_265, :job_265, :id_265, :familyMembers_265 , :address_265
    def initialize(name_265, age_265, job_265, id_265, familyMembers_265, address_265)
        super(name_265, age_265, job_265, id_265)
        @familyMembers_265 = familyMembers_265
        @address_265 = address_265
    end

    def show
        puts "Địa chỉ: #{@address_265} | Gia đình có #{@familyMembers_265} thành viên | "
        super()
    end
end