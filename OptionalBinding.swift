//Enlaces Opcionales
var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Brais"
myOptionalString2 = "Br"
myOptionalString3 = "Nais"
if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3{
    print("\(myString) \(myString2) \(myString3)")
} else {
    print(myOptionalString)
    print("Alguna Variable es nula")
}

//Desempaquetado forzado
print(myOptionalString!)
