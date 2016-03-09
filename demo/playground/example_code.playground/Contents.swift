let x: Int = 1
print("Hello \(x)")

let data: [Int]
data = [10, 19]

for i..

let individualScores = [20, 50, 80, 100, 78]
var teamScore = 0
for score in individualScores {
    if score > 70 {
        teamScore += 5
    } else {
        teamScore += 1
    }
}
print(teamScore)






var optionalName: String? = "Somkiat"

if optionalName != nil {
    print("Hello \(optionalName!)")
}

if let name = optionalName {
    print("Hello \(name)")
}


let animal = "hen"

switch animal {
    
case "duck" :
    let sound = "Quack Quack"
case "cow" :
    let sound = "Mooo Mooo"
case "chicken", "hen" :
    let sound = "Cock-a-doodle-doo"
default :
    let sound = "N/A"
    
}



let somePoint = (1, 1)
switch somePoint {
case (0, 0) :
    print("0, 0")
case (_, 0) :
    print("(\(somePoint.0), 0) in x-axis")
case (0, _) :
    print("(0, \(somePoint.1)) in y-axis")
case (-2...2, -2...2) :
    print("Inside the box")
default :
    print("Out of the box")
}

let somePointNamed = (x: 1, y: 1)
somePointNamed.x
somePointNamed.y


func sayHi( fullName name: String,
            dayOfWeek day: String ) -> String {
    return "Hi \(name), today is \(day)"
}

sayHi(fullName: "Somkiat", dayOfWeek: "Monday")




func priceOf() -> (min: Double, max: Double, sum: Double) {
    return (1.0, 2.0, 3.0)
}

print(priceOf().min)
print(priceOf().min)
print(priceOf().sum)

func hiAll( names: String... ) -> String {
    var message:String = ""
    for name in names {
        message += "Hello \(name)" + "\n"
    }
    return message
}

print(hiAll("Somkiat", "Up1"))


func swap( inout first:     Int, inout _ second: Int) {
    let tempFirst = first
    first = second
    second = tempFirst
}

var first = 1, second = 2
swap(&first, &second)
print(first, second)

(first, second) = (second, first)
print(first, second)







func makeIncrement() -> (Int -> Int) {
    func addOne(number: Int) ->Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrement()
print(increment(5))


func hasAnyMatch(numbers: [Int],
                 condition: Int -> Bool) -> Bool {
    for number in numbers {
        if condition(number) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [30, 18, 1, 50]
hasAnyMatch(numbers, condition: lessThanTen)


hasAnyMatch(numbers, condition: { number in number < 3 })
print(hasAnyMatch(numbers, condition: { $0 < 3 }))

let result = hasAnyMatch(numbers) {
    number in number < 3
}

print(result)

let result2 = hasAnyMatch(numbers) {
    $0 < 3
}

print(result2)




class Employee {
    var id: Int = 0
    var firstName: String
    var lastName: String
    
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func simpleInfomation() -> String {
        return "Employee infomation \(firstName) \(lastName)"
    }
}

var employee = Employee(firstName: "somkiat", lastName: "pui")
employee.simpleInfomation()



class Rectangle {
    var sideLength: Double = 5.0 {
        willSet {
            print("Set new value id \(newValue)")
        }
        
        didSet {
            print("Set new value success")
        }
    }
    
    var area: Double {
        get {
            return sideLength * sideLength
        }
        
        set {
            sideLength = newValue
        }
    }
}

var shape = Rectangle()
shape.area = 10
print(shape.area)


class Shape {
    func area() -> Double {
        return 0.0
    }
}

class Square: Shape {
    var width: Double = 0.0
    
    override func area() -> Double {
        return width * width
    }
}

var square = Square()
square.width = 5
square.area()


struct Resolution {
    var width = 0
    var height = 0
    
    init() {}
    
    init( width: Int, height: Int ) {
        self.width = width
        self.height = height
    }
}

class Video {
    var resolution = Resolution()
    var name: String?
    var frameRate = 0.0
    
    init() {}
}


var normal = Resolution(width:600, height: 480)
var hd = normal

hd.width = 1000

print(normal.width)
print(hd.width)


struct Point {
    var x = 0
    var y = 0
}

struct Point3D {
    var x = 0
    var y = 0
    var z = 0
}


//enum iOSDeviceType {
//    case iPhone
//    case iPad
//    case iWatch
//}
//
//var myDevice: iOSDeviceType = .iPhone
//
//if myDevice == .iPhone {
//    print("This is iPhone")
//}


enum iOSDeviceType {
    case iPhone(String)
    case iPad(String)
    case iWatch
}

var myDevice = iOSDeviceType.iPhone("6")

switch myDevice {
case .iPhone(let model):
    print("iPhone \(model)")
case .iPad(let model):
    print("iPad \(model)")
case .iWatch:
    print("iWatch")
}

enum Direction: Int {
    case Up = 1
    case Down
    case Right
    case Left
}

var direction = Direction(rawValue: 4)
print(direction?.rawValue)

if let direction = Direction(rawValue: 10) {
    switch direction {
    case .Up :
        print("Up direction")
    case .Down :
        print("Down direction")
    case .Right :
        print("Right direction")
    case .Left :
        print("Down direction")
    }
} else {
    print("Invalid direction")
}
































