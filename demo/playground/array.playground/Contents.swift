var emptyArray: [Int] = []

var arrayOfInt: [Int]
arrayOfInt = [1, 2, 3, 4, 5]

for data in arrayOfInt {
    print(data)
}

arrayOfInt.append(6)
arrayOfInt.insert(7, atIndex: arrayOfInt.count)
arrayOfInt.removeFirst(2)
arrayOfInt.removeLast()
arrayOfInt = arrayOfInt.reverse()

arrayOfInt[0...arrayOfInt.count-1] = [100]

for data in arrayOfInt {
    print(data)
}

var strings = ["somkiat", "pui"]
for (index, value) in strings.enumerate() {
    print("Data in \(index+1) have value is \(value) ")
}

let scores: [Int] = [1, 2, 3, 4, 5]
for score in scores {
    print(score)
}

let grades: [String]
grades = ["A", "B"]
print(grades.first)

var employee = ["name": "somkiat"]
employee["id"] = "1"
for (key, value) in employee {
    print(key, value)
}

var a = 1, b = 2
(a, b) = (b, a)
print(a, b)


print("Message")
print("Hello", "World")
let x = 2
print("Hello \(x*2)")



for count in 0...5 {
    print(count)
}
for count in 0..<5 {
    print(count)
}
for _ in 0...2 {
    print("Hello")
}

var datas = [1, 2, 3, 4, 5]
let copy = datas
//datas.removeFirst()
//datas.removeFirst(2)
//datas.removeLast()
//datas.removeRange(2...3)
datas.replaceRange(2...3, with: [444])
for data in datas {
    print(data)
}

print(datas.first as Int!)
