
class FizzBuzz {

    func say(number: Int) -> String {
        if isFizz(number) {
            return "FIZZ"
        }
        return "\(number)"
    }
    
    func isFizz(number: Int) -> Bool {
        return number%3 == 0
    }
    
}
