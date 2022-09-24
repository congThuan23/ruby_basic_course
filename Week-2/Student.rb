class Student
    def initialize(studentId, fullName, gradeMath, gradePhysics, gradeChemistry)
        @studentId = studentId
        @fullName = fullName
        @gradeMath = gradeMath
        @gradePhysics = gradePhysics
        @gradeChemistry = gradeChemistry
    end

    # def initialize()
    # end

    def EnterInfo()
        @studentId = gets
        @fullName = gets
        @gradeMath = gets.to_f
        @gradePhysics = gets.to_f
        @gradeChemistry = gets.to_f
    end

    def ShowInfo()
        print "Your student ID is ",@studentId, "\n"
        print "FullName: ",@fullName , "\n"
        print "Math grade: ",@gradeMath, "\n"
        print "Physics grade: ",@gradePhysics , "\n"
        print "Chemistry grade: ",@gradeChemistry , "\n"
        print "Average grade: ",((@gradeMath+@gradePhysics+@gradeChemistry)/3.0).round(2), "\n"
    end
end

object = Student.new(111,"Thuan Nguyen", 9.65,8.58,9.63)
object.ShowInfo()

# object = Student.new()
# object.EnterInfo()
# object.ShowInfo()