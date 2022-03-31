let myStringNumber = "100"
//Transformar a int
let myIntNumber = Int(myStringNumber)

//Transformar a int de manera opcional, es decir si se puede mediante variable: Int?
let myWrongStringNumber = "Brais"
let myWrongIntNumber: Int? = Int(myWrongStringNumber)

//Declarar variable como posible nulo
var myOptionalString: String?
print(myOptionalString)

//Comprobar si es nulo
if myOptionalString != nil{
    print("No es nulo")
}else {
    print("Es nulo")
}