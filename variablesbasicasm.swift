import Foundation

print("Hello worlds")
var str = "Hello, playground"

//Caracter unicode
let myCaracter = "\u{59}"
print(myCaracter)
//Emojis
let myEmoji = "\u{1F496}"

print("Hola" + myEmoji)


//Arreglos******************
var arregloNumeros = [1,2,3]
let arregloNumeroInmutable = [3,2,1]
//Añadir
arregloNumeros.append(5)
arregloNumeros.insert(4, at:3)
print(arregloNumeros)
//Eliminar valores
arregloNumeros.removeLast()
arregloNumeros.remove(at:3)
//Eliminar todo el arreglo
arregloNumeros.removeAll()
var arregloVacio:[Int] = []

//Diccionarios***********************
let myClassicDictionary = Dictionary<Int, String>()
var myModernDictionary = [Int:String]()
//Añadir datos
myModernDictionary = [001:"Juan", 002:"Brais"]
//Añadir un solo dato
myModernDictionary[003] = "Ana"
//Acceso a un dato
myModernDictionary[002]
//Borrar un dato
myModernDictionary[002] = nil

//Tuplas***********************
var persona = ("Juan", "Villalvazo", 30, 1.86)
//Acceder a un dato
persona.0
//Declarar tupla con clave:
var persona = (nombre:"Juan", apellido:"Villalvazo", edad:30, estatura:1.86)
var (nombre, apellido, edad, estatura) = persona
persona.nombre

//Sintaxis Enumeración*****************
enum PersonalData{
    case name
    case surname
    case address
    case phone
}
//Editar valores 
var currentData: PersonalData = .name
var input = "Brais"
currentData = .phone
input = "666666666"
//Enumeraciones con valores asicioados
enum ComplexPersonalData{
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}
//Editar datos
var complexCurrentData: ComplexPersonalData = .name("Brais")
var complexCurrentData = .address("Calle Test", 5)
//Enum con el mismo tipo de valor
enum RawPersoonalData: String{
    case name = "Nombre"
    case surname = "Apellidos"
    case address = "Direccion"
    case phone = "Numero de telefono"
}
//Acceder al valor
RawPersoonalData.phone.rawValue


//Range Operator**********
var arregloEjemplo = [0,1,2,3,4,5,6,7,8,9]
var subsetArreglo = arregloEjemplo[1..3]
var subSetaArreglo2 = arregloEjemplo[...3]
var subSetaArreglo3 = arregloEjemplo[5...]
var rangoCerrado = [1...5]
var subArray = Array(rangoCerrado[0])

//Condicionales

//If
var edad = 17
var cantidadDinero = 1000
var sexoFemenino = false
if edad < 20  || cantidadDinero > 250{
    print("Es verdadero")
}else {
    print("No lo tienes")
}

if !((edad < 20  || cantidadDinero > 250) && (sexoFemenino)){
    print("Es verdadero")
}else {
    print("No lo tienes")
}

//Switch
let country = "ES"
switch country {
case "ES":
    print("El idioma es Español")
case "AR":
    print("El idioma es Español")
case "PE":
    print("El idioma es Español")
case "ME":
    print("El idioma es Español")    
case "FR"
    print("El idioma es Frances")
default:
    print("El idioma es Ingles")
}

let age = 20
switch country {
case 0,1,2:
    print("Eres un bebe")
case 3...10:
    print("Eres un niño")
case 11..<16:
    print("Eres un adolescente")
default:
    print("El idioma es Ingles")
}

//Switch con Enum
enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .name
switch userData {
  case .name:
    print("Estamos editando el nombre")
  case .surname:
    print("Estamos editando el surname")
  case .address:
    print("Estamos editando el address")
  case.phone:  
    print("Estamos editando el phone")
}

//Bucles

//For in******************
//For in con rango
var contadora = 0
for numero in 1...4 {
    contadora += 1
    print(numero)
}
//For in con diccionario
var paises = ["MX", "EUA", "JP"]
for pais in paises {
    print(pais)
}
//For in con diccionario clave valor
var paises = ["MX":"Mexico", "EUA":"Estados Unidos", "JP":"Japon"]
for (pais, significado) in paises {
    print(" \(pais) --- \(significado) ")
}

//While***************
var age = 10
while age < 18 {
    print("Eres menor de edad. Te faltan \(18 - age) años")
    age += 1
}

//Repeat While***********
var numeros = [1,2,3,4,5,6,7,8,8,9,10]
var i = numeros.count -1
repeat {
    numeros.remove(at:i)
    i = numeros.count -1
} while (numeros.count > 0)

var numeroAleatorio:Int
var n = 0
repeat {
    n += 1
    numeroAleatorio = Int(arc4random_uniform(10) #Numero aleatorio numero aleatorio del 0 al 10)
    print("El ciclo lleva \(n) cantidad de iteraciones")
} while (numeroAleatorio != 8)