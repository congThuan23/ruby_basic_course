load "./Document.rb"
load "./Book.rb"
load "./Journal.rb"
load "./Newspaper.rb"

class ManagementDocuments
    def initialize()
        @document_265 = []
    end
    
    def addDocument(document_265)
        @document_265  << document_265
    end

    def getDocumentById(id_265)
        @document_265.each do |item|
            if item.id_265 = id_265
                return item
            end
        end
    end

    def deleteDocument(id_265)
        document_265 = getDocumentById(id_265)
        @document_265.delete(document_265)
    end

    def showDocument()
        @document_265.each do |item|
            item.to_string
        end
    end

    def searchByBook()
        result_265 = @document_265.select{|doc| doc if doc.class.ancestors.include? Book}
        result_265.each do |doc|
            doc.to_string()
        end
    end

    def searchByJuornal()
        result_265 = @document_265.select{|doc| doc if doc.class.ancestors.include? Journal}
        result_265.each do |doc|
            doc.to_string()
        end
    end

    def searchByNewspaper()
        result_265 = @document_265.select{|doc| doc if doc.class.ancestors.include? Newspaper}
        result_265.each do |doc|
            doc.to_string()
        end
    end
end