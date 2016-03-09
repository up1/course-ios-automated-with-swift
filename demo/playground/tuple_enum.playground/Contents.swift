var person  = ( "somkiat", "up1" )

print(person.0)
print(person.1)
print(person)


var goodPerson = ( name: "somkiat", nickname: "up1" )

print(goodPerson.name)
print(goodPerson.nickname)

var (a, b, c) = (1, 2, 3)
(a, b) = (b, a)
print(a)
print(b)


enum iOsDeviceType {
    case iPhone
    case iPad
    case iWatch
}

var myDevice: iOsDeviceType = .iPhone
if( myDevice == .iPhone ) {
    print("My iPhone")
}

enum Currency {
    case thb(Int)
    case usd(Int)
}

var myCurrency: Currency = .usd(100)

switch myCurrency {
case .thb(let money):
    print("Thai : \(money)")
default :
    print("Error")
}

enum Direction: Int {
    case Up = 1
    case Down
    case Left
    case Right
}

var direction = Direction(rawValue: 3)
print(direction?.rawValue)










