//Estructura************
struct cuadrados {
    var ancho = 10
    var alto = 10

    func area() -> Int{
        return ancho * alto
    }
}

var miCuadrado = cuadrados()
var areaCuadrado = miCuadrado.area()
print(areaCuadrado)

//Clases**********
class automovil{
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    func encender() -> Bool{
        return true
    }
    func apagar() -> Bool{
        return true
    }
    func acelerar() -> Bool{
        return true
    }
}
//Instanciarlo
var miObjetoMazda = automovil()
//Asignar valores
miObjetoMazda.precio = 500
print(miObjetoMazda.precio)

//Diferencias entre estructuras y clases, estructura vs clase
//La clase al crear copias de la instancia, referencia a la otra, es decir los cambios se aplican a la copia de esa instancia y el otro(estructuras no referencia a esa copia, los cambios no afectan al original)
