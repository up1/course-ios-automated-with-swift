

func hello(name: String, age: Int) {
    print(name + " " + String(age))
}

hello("somkiat", age: 20)

func send(to name: String, from email: String) {
    print("From \(email) to \(name)")
}

send(to: "somkiat", from: "somkiat.p@gmail.com")

func send2(name: String, _ email: String) {
    print("From \(email) to \(name)")
}

send2("", "")


func sum(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum([1,2])

func sum2(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum2(1, 2)


func swap(inout a: Int) {
    a = 10
}

var a = 8
swap(&a)
print(a)


func my(myFunction: (Int...) -> Int, _ a: Int, _ b:Int) {
    print("Result : \(sum2(a, b))")
}

my(sum2, 1, 2)


let name = "somkiat"
switch name {
case "y", "x" :
    print("Y")
case "somkiat" :
    print("X")
default :
    print("N/A")
}


let point = (x:1, y:2, z:3)
point.x
point.y
point.z


func sayHi(name: String) -> (x: String, y: String) {
    return ("Hi", name)
}

sayHi("Somkiat")


func printAll(names: String...) {
    for name in names {
        print(name)
    }
}

printAll("Somkiat", "Pui", "30")

func swap( inout first: Int, inout _ second: Int ) {
    first = 100
}

var first = 1, second = 2
(first, second) = (second, first)
first


func addOne(number: Int, _ number2: Int) ->Int {
    return 1 + number + number2
}

func addTwo(number: Int, _ number2: Int) ->Int {
    return 2 + number + number2
}

func makeIncrement() -> ((Int, Int) -> Int) {
    return addTwo
}
var increment = makeIncrement()
increment(5, 2)



var z1 = 1
var z2 = 2
(z1,z2) = (z2, z1)

print(z1)
print(z2)




func addOne(number: Int) -> Int {
    return number + 1
}

func addTwo(number: Int) -> Int {
    return number + 2
}

func compute(number: Int,
             condition: Int->Int ) -> Int {
        return condition(number)
}

print(compute(4, condition: addTwo ))

















