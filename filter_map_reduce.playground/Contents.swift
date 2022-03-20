import UIKit

struct students {
    var name : String
    var age : Int
    var marks : Float
}

var samith = students(name: "samith", age: 19, marks: 65.4)
var senura = students(name: "senura", age: 19, marks: 74.2)
var muditha = students(name: "muditha", age: 17, marks: 80.4)

var studentsClass = [samith, senura, muditha]

// old way for find

var ages: [students] = []

for sameAge in studentsClass {
    if sameAge.age == 19{
        ages.append(sameAge)
    }
}

print(ages)

// using filter
let agesFil = studentsClass.filter({ return $0.age == 19})

// using maps
let newMarks = studentsClass.map({return $0.marks * 1.2})

// reduce

let totalMarks: Float = newMarks.reduce(0.0, +)
print(totalMarks)
