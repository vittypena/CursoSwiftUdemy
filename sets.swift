// Similar a arrays. Conjuntos, colecciones, no estan ordenados y no pueden ser repetidos

//Sin datos
var mySet = Set<String>()

//Con datos
let mySet2 : Set<String> = ["Brais", "More", "Pena"]

//Insercion de uno en uno
mySet.insert("Vitty")
mySet.insert("32")
print(mySet)

//Acceso
if mySet.contains("Vitty"){
    print("Existe")
}else{
    print("No existe")
}

//Remover
mySet.remove("32")
print(mySet)

//Si el primer indice es...
if let index = mySet.firstIndex(of: "Vitty"){
    mySet.remove(at: index)
}
print(index)

//Como iterar Sets
mySet.insert("Vitty")
mySet.insert("32")
for myElement in mySet{
    print(myElement)
}

//Operaciones de conjunto**************
let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [1,2,3,4,5]
//Interseccion crear un nuevo conjunto con los valores comunes entre ambos
print(myIntSet.interseccion(myIntSet2))
//Diferencia asimetrica, lo mismo pero con valores no comunes
print(myIntSet.symmetricDifference(myIntSet2))
//Union sin estar repetidos
print(myIntSet.union(myIntSet2))
//Sustraccion, los valores que tenga en comun con el primero los elimina
print(myIntSet.subtracting(myIntSet2))