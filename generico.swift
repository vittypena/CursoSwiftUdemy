//Genericos

//Funcion sin genericos
//inout significa que son parametros que van a entrar y salir sin que nosotros los retornemos directamente
func swapTwoInts(a: inout Int, b: inout Int){
    let temporal = a 
    a = b 
    b = temporal 
}
var myFirstInt = 5
var mySecondInt = 10
print("El primer valor es \(myFirstInt) y el segundo \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("El primer valor es \(myFirstInt) y el segundo \(mySecondInt)")

//Con genericos, asi puede entrar cualquier valor generico sin especificar el tipo de dato que va a entrar, se puede poner otra letra
func swapTwoGenerics<T>(a: inout T, b: inout T){
    let temporal = a 
    a = b 
    b = temporal 
}
var myFirstGeneric = 5
var mySecondGeneric = 10
print("El primer valor es \(myFirstGeneric) y el segundo \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("El primer valor es \(myFirstGeneric) y el segundo \(mySecondGeneric)")