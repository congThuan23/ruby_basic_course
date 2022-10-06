class Person
    attr_accessor :name_265, :age_265, :job_265, :id_265
    def initialize(name_265, age_265, job_265, id_265)
      self.name_265 = name_265
      self.age_265 = age_265
      self.job_265 = job_265
      self.id_265 = id_265
    end
  
    def show
      print "Họ tên: #{@name_265} | Tuổi: #{@age_265} | Nghề nghiệp: #{@job_265} | CMND: #{@id_265}"
    end
end