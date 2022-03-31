//Protocolos, de esta manera estamos obligando a que si colocamos el protocolo en una estructura o clase se añada lo que hay en el protocolo
protocol PersonProtocol {
    //De esta forma vamos a poder obtener el valor de la propiedad y tambien leerlo
    var name: String{ get set}
    var age: Int{ get set}    
    func fullName() -> String
}

//Añadir el protocolo a la estructura
struct Programmer: PersonProtocol{
    var language: String
    var name: String
    var age: Int
    func fullName() -> String{
        return "El nombre es \(name), edad : \(age), y escribe en\(language)"
    }
}

struct Teacher: PersonProtocol{
    var subject: String
    var name: String
    var age: Int
    func fullName() -> String{
        return "El nombre es \(name), edad : \(age), y da \(subject)"
    }
}

let myProgrammer = Programmer(language: "Swift", name: "Brais", age: 32)
let myTeacher = Teacher(subject: "Matematicas", name:"Juan", age: 50)
print( myProgrammer.fullName() )
print( myTeacher.fullName() )

//Protocolo Delegado, es un tipo de protocolo y permite comunicar dos clases en sentido inverso, es muy importante
class FirstClass: SecondClassProtocol{
    //De esta manera podemos instanciar la segunda clase desde la primera clase con la funciion callSecond
    func callSecond(){
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    func call(){
        print("Estoy de vuelta")
    }
}

//Protocolo para la segunda clase
protocol SecondClassProtocol{
    func call()
}
class SecondClass{
    var delegate: SecondClassProtocol?

    func callFirst(){
        //El programa se dormira 5 segundos
        sleep(5)
        //Delega el protocolo        
        delegate?.call
    }
}

let firstClass = FirstClass()
firstClass.callSecond