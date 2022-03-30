//Funcion Basica**************
func holaMundo(){
    print("Hola Mundo")
}
holaMundo()

//Funcion con un parametro**************
func cuadradoDeNumero(numero:Int){
    let numeroCuadrado = numero * numero
    print(numeroCuadrado)
}
cuadradoDeNumero(numero:5)


//Funcion con valor de retorno************
func cuboDe(numero:Int) -> Int{
    let numeroCubo = numero * numero * numero

    return numeroCubo
}
print(cuboDe(numero:3))

//Funcion con multiples parametros*********
func saludarAlumno(nombre:String, mensaje:String){
    print("Hola \(nombre) \(mensaje)")
}
saludarAlumno(nombre:"Maria", mensaje: "que tal")

//Funcion con valores por default***********
func saludarDefecto(nombre:String, mensaje:String = "Que tal"){
    print("Hola \(nombre) \(mensaje)")
}
saludarDefecto(nombre:"Pedro")

//Funcion con multiple retorno**********
func listaNombres() -> [String]{
    let arregloNombres = ["Jose", "Maria", "Morelos"]
    return arregloNombres
}
var nombres = listaNombres()
print(nombres)

//Funcion con parametros de Nombres Externos*************
func calificacionPromedio(matematicas materiaUno:Double, fisica materiaDos:Double,quimica  materiaTres:Double) -> Double{
    return (materiaUno+materiaDos+materiaTres)/3
}
let miCalificacion = calificacionPromedio(matematicas:81, fisica:45, quimica:60)
print(miCalificacion)

//Clousures********* Como las funciones pero es una variable que guarda un bloque de codigo
/*
{
    (parametros) -> tipo-valor-retorno in
    codigo
}
*/
let miPrimerClousure = {
(materiaUno:Double, materiaDos:Double, materiaTres:Double) -> Double in
    return (materiaUno+materiaDos+materiaTres)/3
}
print(miPrimerClousure(100, 22, 88))