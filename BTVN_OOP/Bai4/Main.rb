load "./Town.rb"

town = Town.new

puts "Vui lòng nhập số hộ dân: "
family = gets.to_i

for i in 1..family
    puts "===== HỘ DÂN THỨ #{i} ====="
    puts "Nhập địa chỉ gia đình: "
    address = gets
    puts "Nhập số lượng thành viên: "
    members = gets.to_i
    for j in 1..members
        puts "+++ Thành viên thứ #{j} +++"
        puts "Nhập họ tên: "
        fullName = gets
        puts "Nhập tuổi: "
        ages = gets
        puts "Nhập nghề nghiệp: "
        jobs = gets
        puts "Nhập số CMND: "
        id = gets
        member = Family.new(address, members, fullName, ages, jobs, id)
        town.addTown(member)
    end
end

puts "=== DANH SÁCH THÔNG TIN CÁC HỘ TRONG KHU PHỐ ĐÃ NHẬP ==="
town.showTown()
