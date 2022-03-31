//Type casting (validacion de tipos de dato)
let myString = "Brais"
let myInt = 32

class Myclass{
    var name: String!
    var age: Int!
}

let myClass = Myclass()
myClass.name = "Brais Moure"
myClass.age = 32

//Con un array de tipo de dato any podemos introducir cualquier dato dentro, array con todo
let myArray: [Any] = [myString, myInt, myClass]

//Comprobar que tipo de dato es
for item in myArray{
    //Type casting 
    if item is String{
        //Downcasting, que viene a ser transformar un tipo de dato a otro más restringido, hay que obligar con ! a que sea de tipo String para hacer el cast
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    }else if item is Int{
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    }else if item is Myclass{
        let myItemMyclass = item as! Myclass
        print("Item es de tipo Myclass y tiene el valor \(myItemMyclass.name!) y \(myItemMyclass.age!)")
    }
}
//Lo mismo pero más corto
for item in myArray{
    if let myItemString = item as? String{
        print("Item es de tipo String y tiene el valor \(myItemString)")
    }else if let myItemInt = item as? Int{
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    }else if let myItemMyclass = item as? Myclass{
        print("Item es de tipo Myclass y tiene el valor \(myItemMyclass.name!) y \(myItemMyclass.age!)")
    }
}