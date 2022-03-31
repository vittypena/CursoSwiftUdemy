//Salida rapida guard let, sirve para desempaquetar valores no nulos pero lo que va  aproducir es salida rapida, es decir exigir que una condicion sea verdadera para que se ejecute el dcodigo siguiente y si no parar el programa
var myOptionalString: String?

func myFunction(){
    guard let myString = myOptionalString else{
        return
    }
    print("El valor de myString es \(myString)")    
}

myFunction()
myOptionalString = "Mehh"
myFunction()
//Debe estar dentro de una funcion, para en caso de no funcionar, escapar de la funcion con el return