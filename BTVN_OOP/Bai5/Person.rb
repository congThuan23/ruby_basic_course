class Person
  attr_accessor :name_265, :age_265, :passport_265, :room_265, :numberRent_265
  def initialize(room)
      print "Nhập tên: "
      @name_265 = gets
      print "Nhập tuổi: "
      @age_265 = gets.to_i
      print "Nhập số CMND: "
      @passport_265 = gets
      @room_265 = room
      print "Nhập số ngày thuê: "
      @numberRent_265 = gets.to_i
  end
  
  def toString
      return "Cá nhân { Tên = #{@name_265}, Tuổi = #{@age_265}, CMND = #{@passport_265}, #{@room_265.toString}, 
      Số ngày thuê =#{@numberRent_265}}"
  end
end