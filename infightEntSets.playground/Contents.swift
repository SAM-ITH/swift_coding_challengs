import UIKit

func canTwoMovies(in movieLengths: [Int], fillFlight flightLength: Int) -> Bool {

    var movieLengthscheck = Set<Int>()
    
    for firstMovieLength in movieLengths {
        let secondMovieLength = flightLength - firstMovieLength
        if movieLengthscheck.contains(secondMovieLength){
            return true
        }
        movieLengthscheck.insert(firstMovieLength)
    }

    return false
}
