//Cadenas de opcionales

class Student{
    var name: String?
    var book: Book?
}

class Book{
    var pages: Int?
}

let myStudent = Student()
let myBook = Book()

print(myStudent.name)
print(myStudent.book?.pages)

myBook.pages = 50
myStudent.book = myBook

myStudent.name = "Brais"

//Enlace opcional encadenado
if let pages = myStudent.book?.pages, let name = myStudent.name{
    print("El libro de \(name) tiene \(pages) paginas"
}else{
    print("El libro no tiene páginas")
}