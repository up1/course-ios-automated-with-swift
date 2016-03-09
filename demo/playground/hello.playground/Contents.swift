//: Playground - noun: a place where people can play

import Foundation


var my_integer = 1
var my_integer2:Int = 40



let message = "Hello"
let age = 40
let hello = message + " " + String(age)

print("🚇🏆")

let myData = "dsdfsdfsdfsdfsdf"
for scala in myData.unicodeScalars {
    if scala == "d" {
       print(scala)
    }
}

myData.characters.count





print("Hello \(age)")

let my_message = "Hello \(age) ."

var products = ["apple", "orange"]
print(products[0])
print(products[1])


var dictionary = [
    "key 1" : "value 1",
    "key 2" : 3
]


var emptyArray = [String]()
emptyArray.append("value 1")
print(emptyArray)

var myCards = [String : Int]()
myCards["key 1"] = 1
myCards["ket 2"] = 2


let datas = [1, 2, 3, 4, 5]
for data in datas {
    print(data)
}


var optionalString : String? = nil
print( optionalString == nil )

if let val = optionalString {
    print("Hello \(val)")
}

let test = "..."

let xx = "Hello \(optionalString ?? test)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

for i in 0...4 {
    print(i)
}

for _ in 0...3 {
    print("Hello")
}


for i in 0..<4 {
    print(i)
}

for var i=0; i<4; i++ {
    print(i)
}



func sum(datas : [Int]) -> Int {
    var total = 0;
    for data in datas {
        total += data
    }
    return total
}

sum([1,2,3,4])


func sum2(datas : [Int]) -> (total: Int, average: Int) {
    var total = 0;
    for data in datas {
        total += data
    }
    let average = total/datas.count
    return (total, average)
}

let result = sum2([1,2,3,4])
print(result.total)
print(result.average)


func sumOf(datas: Int...) -> Int {
    var sum = 0;
    for data in datas {
        sum += data
    }
    return sum
}

sumOf()
sumOf(1,2,3,4)


class Hello {
    init(){
        print("Call init")
    }
    
    deinit{
        print("Call deinit")
    }
}

var obj = Hello()


class NamedShape {
    
    var noOfSize: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(self.noOfSize)"
    }
    
}

class Square: NamedShape {
    
    var sizeLength: Double
    
    init(name: String, size: Double) {
        self.sizeLength = size
        super.init(name: name)
    }
    
    override func simpleDescription() -> String {
        return "A square ";
    }
    
    var area: Double {
        get {
            return sizeLength
        }
        
        set {
            sizeLength = newValue / 3.0
        }
    }
    
}

var square = Square(name: "Square", size: 3)
square.area = 3
print(square.area)



class Hi {
    
    var message: String {
        willSet {
            print("before set")
        }
        
        didSet {
            print("after set")
        }
        
    }
    
    init() {
        self.message = "somkiat"
    }
    
}

var hi = Hi()
hi.message = "somkiat 1"
hi.message = "somkiat 2"


class XXX {
    init() {
        print("init")
    }
    
    deinit {
        print("de")
    }
}

var x = XXX()

var yy = [1, 2, 3, 4]
for i in yy {
    print(i)
}

var data1: String? = "boy"
var data2: String = "somkiat"

print("\(data1 ?? data2)")


if let value = data1 {
    print(value)
}

let attributes = [ "name" : "somkiat"  ]
print("My name is \(attributes["name"]!)")














































































