//Manejo de errores en una funcion*******************************
func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    if firstNumber == nil{
        throw SumError.firstNumberNil
    }else if secondNumber == nil{
        throw SumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0{
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    return firstNumber! + secondNumber!
}

//Definicion de tipos de errores, para capturarlos, los invocamos en la funcion de arriba
enum SumError: Error{
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}
//Propagacion de errores, lo intentamos mediante el uso de do try
do{
print(try sum(firstNumber: 4, secondNumber: -50))
}catch SumError.firstNumberNil{
    print("El primer numero es nulo")
}catch SumError.secondNumberNil{
    print("El segundo numero es nulo")
}catch SumError.numberNegative(let firstNumber, let secondNumber){
    print("Hay algun numero negativo \(firstNumber), \(secondNumber)")
}
//**********************************************