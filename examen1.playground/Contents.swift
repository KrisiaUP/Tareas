//  1. en la modernidad: es codigo abierto, 
//  2. Xcode, tiene la ventana principal que no se puede esconder que es donde visualizamos los archivos, del lado izquierdo esta el navegador, que es donde podemos ver el arbol de archivos de nuestro proyecto y se puede esconder por si necesitamos mas espacio. Del lado derecho tenemos las utilidades que es donde podemos ver las propiedades de los componentes, tambien se puede esconder. En la parte de abajo tenemos el debugger, ahi podemos encontrar la consola donde nos muestra los errores y resultados, igualmente se puede esconder.
//  3. gracias a la compatibilidad de swift con objective C podria usar la libreria sin problemas.


import UIKit

let frase = "Texto de          prueba para el      examen"
let m1: Int = 4
let m2: Int = 8
let m3: Int = 2
let numeros1: [Int] = [1,1,1,3,1,1]
let numeros2: [Int] = [3,5,7,6,5,3,4,8,9,5,0]
let numeros3: [Int] = [1,1,1]

enum Deportes{
    case Futbol(tamanoBalon: Int)
    case CarrerasDeAuto(nombreFormula: String)
    case Hockey(sobreHielo: Bool)
    case Gimnasia(artistica: Bool)
    case Natacion(marAbierto: Bool)
}

//  esta funcion cuenta las parejas partiendo de que un 1 en la primera posicion es diferente a un 1 en la segunda, con ese ejemplo y suponiendo que m=3 y numeros=[1,1,3], deberiamos tener 2 parejas diferentes.
func parejasQueSumanM(m: Int, numeros:[Int]) -> Int {
    var dic: [ Int : Int] = [:]
    var parejas: Int
    parejas = 0
    for n in numeros{
        if dic[m-n] != nil {
            parejas = parejas + dic[m-n]!
        }
        if dic[n] == nil{
            dic[n] = 1;
        }
        else{
            dic[n] = dic[n]! + 1
        }
    }
    return parejas
}

func contarPalabras(texto: String) -> (Int,String) {
    let palabras = texto.split(separator: " ")
    return (palabras.count,String(palabras[0]))
}

func dependeDelDeporte(deporte: Deportes) -> String{
    switch deporte{
    case .Futbol(tamanoBalon: 0..<5):
        return "Fútbol para niños"
    case .Futbol(tamanoBalon: _):
        return "Fútbol para adultos"
    case .CarrerasDeAuto(nombreFormula: "Formula1"):
        return "Carreras de fórmula 1"
    case .CarrerasDeAuto(nombreFormula: _):
        return "Carreras que no conocemos"
    case .Hockey(sobreHielo: true):
        return "Hockey sobre hielo"
    case .Hockey(sobreHielo: false):
        return "Hockey pero no es real"
    case .Gimnasia(artistica: true):
        return "Gimnasia artistica"
    case .Gimnasia(artistica: false):
        return "Gimnasia pero aburrida"
    case .Natacion(marAbierto: true):
        return "Natación para los valientes, en mar abierto"
    case .Natacion(marAbierto: false):
        return "Natación para los cobardes, no es en mar abierto"
    default:
        return "No se que hacer"
    }
}


// aqui empiezan los tests de las funciones


func testContarParejas(m:Int,numeros:[Int]){
    print()
    print("Test de la funcion que cuenta parejas")
    print("Con m = \(m) y numeros = \(numeros) las parejas que suman m son: '\(parejasQueSumanM(m: m, numeros: numeros))'.")
}

testContarParejas(m: m1, numeros: numeros1)
testContarParejas(m: m2, numeros: numeros2)
testContarParejas(m: m3, numeros: numeros3)

let res1 = contarPalabras(texto: frase)

print()
print("Test de la funcion que cuenta palabras y regresa la primera")
print("La frase '\(frase)' tiene \(res1.0) palabras y la primera es '\(res1.1)'.")

print()
print("Test de la funcion de deportes")
print("Futbol con tamanoBalon = 3 -> '\(dependeDelDeporte(deporte: Deportes.Futbol(tamanoBalon:3)))'")
print("Futbol con tamanoBalon = 5 -> '\(dependeDelDeporte(deporte: Deportes.Futbol(tamanoBalon:5)))'")
print()
print("Carreras de auto con formula = Formula1 -> '\(dependeDelDeporte(deporte: Deportes.CarrerasDeAuto(nombreFormula:"Formula1")))'")
print("Carreras de auto con formula = otra -> '\(dependeDelDeporte(deporte: Deportes.CarrerasDeAuto(nombreFormula:"otra")))'")
print()
print("Hockey con sobreHielo = true -> '\(dependeDelDeporte(deporte: Deportes.Hockey(sobreHielo:true)))'")
print("Hockey con sobreHielo = false -> '\(dependeDelDeporte(deporte: Deportes.Hockey(sobreHielo:false)))'")
print()
print("Gimnasia con artistica = true -> '\(dependeDelDeporte(deporte: Deportes.Gimnasia(artistica:true)))'")
print("Gimnasia con artistica = false -> '\(dependeDelDeporte(deporte: Deportes.Gimnasia(artistica:false)))'")
print()
print("Natacion con marAbierto = true -> '\(dependeDelDeporte(deporte: Deportes.Natacion(marAbierto:true)))'")
print("Natacion con marAbierto = false -> '\(dependeDelDeporte(deporte: Deportes.Natacion(marAbierto:false)))'")
