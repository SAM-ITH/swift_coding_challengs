import UIKit

let movies = [
    "star trek" : 25,
    "titanic" : 30,
    "avatar" : 20,
    "robinHood" : 40,
    "walle" : 45,
    "salt" : 45
]
var flightLength = 85

for firstMovie in movies {
    let fmovieLength = firstMovie.value
    for secondMovie in movies {
        let smovieLength = secondMovie.value
        let total = smovieLength + fmovieLength
        if total == flightLength && firstMovie.key != secondMovie.key {
            print("first Movie is \(firstMovie.key) and second movie is \(secondMovie.key)")
        }
    }
}




