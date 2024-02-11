class Book {
    let title: String
    let author: String
    let year: Int
    let pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayBookInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library {
    var books: [Book]
    
    init() {
        self.books = []
    }
    
    func addBook(book: Book) {
        books.append(book)
        print("Book '\(book.title)' added to the library.")
    }
    
    func removeBook(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            let removedBook = books.remove(at: index)
            print("Book '\(removedBook.title)' removed from the library.")
        } else {
            print("Book with title '\(title)' not found in the library.")
        }
    }
    
    func displayLibraryBooks() {
        print("Books in the Library:")
        for book in books {
            book.displayBookInfo()
            print("---------------")
        }
    }
}

// Example usage:
let library = Library()

let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, pageCount: 180)
let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, pageCount: 281)

library.addBook(book: book1)
library.addBook(book: book2)

library.displayLibraryBooks()

library.removeBook(title: "The Great Gatsby")

library.displayLibraryBooks()
