load "./Book.rb"
load "./ManagementDocuments.rb"

managementDocuments = ManagementDocuments.new

while true
    puts "=============== QUẢN LÝ SÁCH ==============="
    puts "1. Thêm mới tài liệu sách, tạp chí, báo."
    puts "2. Xoá tài liệu theo mã tài liệu."
    puts "3. Hiển thị thông tin tài liệu."
    puts "4. Tìm kiếm tài liệu theo sách, tạp chí, hoặc báo."
    puts "5. Thoát khỏi chương trình."

    puts "Vui lòng nhập chức năng cần thực hiện: "
    n_265 = gets.to_i

    case n_265
    when 1
        puts "1. Thêm mới sách."
        puts "2. Thêm mới tạp chí."
        puts "3. Thêm mới báo."
        puts "Vui lòng chọn: "
        n1_265 = gets.to_i
        case n1_265
        when 1
            puts "Nhập mã sách: "
            id_book = gets
            puts "Nhập tên nhà xuất bản: "
            publisher = gets
            puts "Nhập số bản phát hành: "
            number = gets
            puts "Nhập tên tác giả: "
            author = gets
            puts "Nhập số trang: "
            numberPage = gets
            book = Book.new(id_book, publisher, number, author, numberPage)
            managementDocuments.addDocument(book)
        when 2
            puts "Nhập mã tạp chí: "
            id_journal = gets
            puts "Nhập tên nhà xuất bản: "
            publisher = gets
            puts "Nhập số bản phát hành: "
            number = gets
            puts "Nhập số phát hành: "
            reissueNumber = gets
            puts "Nhập tháng phát hành: "
            monthReissue = gets
            journal = Journal.new(id_journal, publisher, number, reissueNumber, monthReissue)
            managementDocuments.addDocument(journal)
        when 3
            puts "Nhập mã báo: "
            id_newspaper = gets
            puts "Nhập tên nhà xuất bản: "
            publisher = gets
            puts "Nhập số bản phát hành: "
            number = gets
            puts "Nhập ngày phát hành: "
            dayReissue = gets
            newspaper = Newspaper.new(id_journal, publisher, number, dayReissue)
            managementDocuments.addDocument(newspaper)
        end
    when 2
        puts "Nhập mã tài liệu cần xoá: "
        id = gets
        managementDocuments.deleteDocument(id)
        puts "Đã xoá tài liệu thành công!"
    
    when 3
        puts "+++++ THÔNG TIN TẤT CẢ TÀI LIỆU +++++"
        managementDocuments.showDocument()

    when 4
        puts "1. Tìm kiếm theo sách."
        puts "2. Tìm kiếm tạp chí."
        puts "3. Tìm kiếm theo báo."
        puts "Vui lòng chọn tác vụ lọc tài liệu: "
        n = gets.to_i
        case n
        when 1
            puts "---------- TÀI LIỆU LÀ SÁCH ----------"
            managementDocuments.searchByBook()
        when 2
            puts "---------- TÀI LIỆU LÀ TẠP CHÍ ----------"
            managementDocuments.searchByJuornal()
        when 3
            puts "---------- TÀI LIỆU LÀ BÁO ----------"
            managementDocuments.searchByNewspaper()
        end

    when 5
        exit()
    else
        puts "Không hợp lệ!"
    end
end
