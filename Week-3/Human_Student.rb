class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
end

class Student < Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation, :studentId, :gradeMath, :gradePhysics, :gradeChemistry
    def initialize (name, hair, weight, height, age, phone, email, nation, studentId, gradeMath, gradePhysics, gradeChemistry)
        super(name, hair, weight, height, age, phone, email, nation)
        @studentId = studentId
        @gradeMath = gradeMath
        @gradePhysics = gradePhysics
        @gradeChemistry = gradeChemistry
    end

    def gradePointAverage()
        return ((@gradeMath + @gradePhysics + @gradeChemistry)/3.0).round(2)
    end 

    def showInfo()
        print "Your student ID is ",@studentId, " | "
        print "Name: ",@name, " | "
        # print "Hair: ",@hair, " | "
        # print "Weight: ",@weight, " | "
        # print "Height: ",@height, " | "
        # print "Age: ",@age, " | "
        # print "Phone number: ",@phone, " | "
        # print "Email: ",@email, " | "
        # print "National: ",@nation, " | "
        print "Grade Math: ",@gradeMath, " | "
        print "Grade Physics: ",@gradePhysics, " | "
        print "Grade Chemistry: ",@gradeChemistry, " | "
        print "GPA: ",gradePointAverage(),"\n"
    end
end

student1 = Student.new("Thuan", "Black", "63kg", "168cm",21,"089898989", "thuan@gmail.com", "Vietnam", "sv01", 10,10,9.5)
student2 = Student.new("Nguyen", "Red", "53kg", "178cm",22,"0898980111", "nguyen@gmail.com", "Laos", "sv02", 7.5,6.8,9.3)
student3 = Student.new("Cong", "Pink", "72kg", "188cm",22,"08989806767", "cong@gmail.com", "China", "sv03", 8.4,6.9,9.1)
student4 = Student.new("Tran", "Blue", "72kg", "188cm",22,"08989806767", "cong@gmail.com", "China", "sv04", 5.5,7.1,8.3)

puts "--------------------------- Unsorted list ---------------------------"
student1.showInfo()
student2.showInfo()
student3.showInfo()
student4.showInfo()

# sorted list
student = []
student << student1
student << student2
student << student3
student << student4

student = student.sort_by{|item| -item.gradePointAverage}
puts "---------------------------- Sorted list ----------------------------"
student.each do |item|
    print "Your student ID is ", item.studentId
    print " | Full Name: ", item.name
    print " | GPA: ", item.gradePointAverage, "\n"
end

