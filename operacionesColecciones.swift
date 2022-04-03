//Metodos con Colecciones****************************
var myArray = [5, 8 ,1, 0, 3, 9, 7, 2, 4, 6]

var myDictionary = [    
    5:"Cinco",
    8:"Ocho",
    1:"Uno",
    0:"Cero",
    3:"Tres"
]

var mySet: Set = [5,8,1,0,3,9,7,2,4,6] 

//Count en colecciones
print(myArray.count)

// isEmpty
print(myArray.isEmpty)

//Reversed, invierte el orden
print(myArray.reversed() as [Int])
print(myDictionary.reversed())

//first o last, retornar el primer elemento de la coleccion
print(myArray.first)


//drop, elimina el primero y lo muestra, con dropfirst o el ultimo con droplast
print(myArray.dropfirst())

//pop, va a extraer y retornar el ultimo o primer elemento
print(myArray.popLast())
//****************************