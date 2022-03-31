//Extensiones
let myMeters: Double = 5

func metersToKm(meters: Double) -> Double{
    return meters / 1000
}

print(metersToKm(meters: myMeters))

//Como crear extensiones para añadir nueva funcionalidad a un tipo de dato,  en este caso serviria para cualquier tipo double del archivo
extension Double{
    var km: Double{
        return self / 1000
    }

    var m:Double{
        return self
    }

    var cm:Double{
        return self * 100
    }
}

print(myMeters.km)