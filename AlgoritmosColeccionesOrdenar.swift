//Ordenar Colecciones*******************************
var myArray = [5, 8 ,1, 0, 3, 9, 7, 2, 4, 6]

//myDictionary.sort() No soportado
var myDictionary = [    
    5:"Cinco",
    8:"Ocho",
    1:"Uno",
    0:"Cero",
    3:"Tres"
]

var mySet: Set = [5,8,1,0,3,9,7,2,4,6]  //mySet.sort() No soportado

//Ordenarlos
myArray.sort()
print(myArray)
//Ordenar bajo criterio, por ejemplo de mayor a menor
myArray.sort{ (intA, intB) -> Bool in
    return intA > intB
}

//Para ordenar en los 3 tipos de colecciones necesitamos sorted, nos devuelve una nueva ya ordenada
var myArraySorted = myArray.sorted 
print(myArraySorted)

myArraySorted = myArray.sorted{ (intA, intB) -> Bool in
    return intA > intB
}

let mySortedDictionary = myDictionary.sorted { (elementA, elementb) -> Bool in
    return elementA.key < elementB.key
}

var mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA > intB
}

//Hacer transformaciones a los arrays
//Por ejemplo sumar 10 a todos los valores mediante mapeo (map)
var myMapArray = myArray.map{(myInt) -> Int in
    return myInt + 10
}

let myStringMapArray = myArray.map{(myString) -> String in
    return "Este es el numero \(myInt)"
}
print(myMapArray)

let myIntMapArray = myDictionary.map{ (myElement) -> Int in
    return myElement.key
}

//For each para iterar******************
    myArray.forEach{(myInt) in
    print(myInt)
    }
//**************
//**************************************************