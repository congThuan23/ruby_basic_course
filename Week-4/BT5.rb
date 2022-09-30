class Officer
    attr_accessor :name, :age, :gender, :address
    def initialize(name, age, gender, address)
        @name = name
        @age = age
        @gender = gender
        @address = address
    end
end

class Worker < Officer
    attr_accessor :name, :age, :gender, :address, :level
    def initialize(name, age, gender, address, level)
        super(name, age, gender, address)
        @level = level
    end
end

class Engineer < Officer
    attr_accessor :name, :age, :gender, :address, :branch
    def initialize(name, age, gender, address, branch)
        super(name, age, gender, address)
        @branch = branch
    end
end

class Staff < Officer
    attr_accessor :name, :age, :gender, :address, :task
    def initialize(name, age, gender, address, task)
        super(name, age, gender, address)
        @task = task
    end
end

class ManagerOfficer
    # attr_accessor :officers
    def initialize()
        @officers = []
    end

    def addOfficer(officer) 
        @officers << officer
    end

    def searchOfficerByName(name)
        return @officers.select{|item| item if item.name.upcase.include?(name.upcase)}
    end

    def showInfoOfficer()
        @officers.each do |item|
            print item.name, " | "
            print item.age, " | "
            print item.gender, " | "
            print item.address, " | "
            puts ""
        end
    end
end
    
# engineer1 = Engineer.new("Thuan", 21, "Male", "Danang", "IT")
# engineer2 = Engineer.new("Thuan", 21, "Male", "Danang", "IT")
# manager_officer = ManagerOfficer.new
# manager_officer.addOfficer(engineer1)
# manager_officer.addOfficer(engineer2)
# manager_officer.showInfoOfficer()

while true
    puts "QUẢN LÝ CÁN BỘ"
    puts "1. Thêm mới cán bộ."
    puts "2. Tìm kiếm theo họ tên."
    puts "3. Hiện thị thông tin về danh sách các cán bộ."
    puts "4. Thoát khỏi chương trình"
    puts "------ Vui Lòng Chọn ------"
    n_265 = gets.to_i
    case n_265
        when 1
            puts "1. Thêm mới kỹ sư"
            puts "2. Thêm mới nhân viên"
            puts "3. Thêm mới công nhân"
            puts "Vui lòng chọn cán bộ: "
            n1 = gets.to_i
            case n1
                when 1
                    puts("Nhập tên kỹ sư:")
                    name_en = gets
                    puts("Nhập tuổi kỹ sư: ")
                    age_en = gets
                    puts("Nhập giới tính kỹ sư: ")
                    gender_en = gets
                    puts("Nhập địa chỉ kỹ sư: ")
                    address_en = gets
                    puts("Nhập ngành đào tạo: ")
                    branch_en = gets
                    engineer = Engineer.new(name_en, age_en, gender_en, address_en, branch_en)
                    manager_officer = ManagerOfficer.new
                    manager_officer.addOfficer(engineer)
                when 2
                    puts("Nhập tên nhân viên:")
                    name_st = gets
                    puts("Nhập tuổi nhân viên: ")
                    age_st = gets
                    puts("Nhập giới tính nhân viên: ")
                    gender_st = gets
                    puts("Nhập địa chỉ nhân viên: ")
                    address_st = gets
                    puts("Nhập công việc: ")
                    task_st = gets
                    staff = Staff.new(name_st, age_st, gender_st, address_st, task_st)
                    manager_officer = ManagerOfficer.new
                    manager_officer.addOfficer(staff)
                when 3
                    puts("Nhập tên công nhân:")
                    name_wo = gets
                    puts("Nhập tuổi công nhân: ")
                    age_wo = gets
                    puts("Nhập giới tính công nhân: ")
                    gender_wo = gets
                    puts("Nhập địa chỉ công nhân: ")
                    address_wo = gets
                    puts("Cấp công nhân: ")
                    level_wo = gets
                    woker = Staff.new(name_wk, age_wk, gender_wk, address_wk, task_wk)
                    manager_officer = ManagerOfficer.new
                    manager_officer.addOfficer(woker)
            end
        when 2
            puts "Nhập tên cán bộ bạn muốn tìm: "
            name = gets
            manager_officer = ManagerOfficer.new
            manager_officer.searchOfficerByName(name)
        when 3
            puts("----- Danh sách cán bộ -----")
            manager_officer = ManagerOfficer.new
            manager_officer.showInfo()
        when 4
            puts("Bạn đã thoát khỏi chương trình! Cảm ơn.")
            exit()
    end
end