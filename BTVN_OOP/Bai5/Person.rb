class Person
    attr_accessor :name_265, :age_265, :id_265
    def initialize(name_265, age_265, id_265)
      self.name_265 = name_265
      self.age_265 = age_265
      self.id_265 = id_265 
    end
  
    def show()
      puts "CMND: #{self.id} | Họ tên: #{self.name} | Tuổi: #{self.age}"
    end
  end