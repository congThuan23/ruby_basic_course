class Student
    def initialize(studentId, fullName, scoresMath, scoresPhysics, scoresChemistry)
        @studentId = studentId
        @fullName = fullName
        @scoresMath = scoresMath
        @scoresPhysics = scoresPhysics
        @scoresChemistry = scoresChemistry
    end

    def EnterInfo()
        studentId = gets
        fullName = gets
        scoresMath = gets
        scoresPhysics = gets
        scoresChemistry = gets
    end

    def ShowInfo()
        print "Your student ID is ",@studentId, "\n"
        print "FullName: ",@fullName , "\n"
        print "Math scores: ",@scoresMath, "\n"
        print "Physics scores: ",@scoresPhysics , "\n"
        print "Chemistry scores: ",@scoresChemistry , "\n"
        print "Average scores: ",(@scoresMath+@scoresPhysics+@scoresChemistry)/3.0, "\n"
    end
end

object = Student.new(111,"Thuan Nguyen", 9,8,10)
object.ShowInfo()