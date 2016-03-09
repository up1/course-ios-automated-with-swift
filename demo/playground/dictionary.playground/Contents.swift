

var userInfo: [String: String] = [
    "firstname" : "Somkiat",
    "lastname"  : "Puisungnoen"
]

userInfo.updateValue("new name", forKey: "firstname1")

for (firstname, lastname) in userInfo {
    print("\(firstname) is \(lastname)")
}
