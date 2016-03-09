import Foundation

class MyContext {
    
    static let defaultContext = MyContext()
    var quotes = [String]()
    
    func addNewQuote(content: String) {
        quotes.append(content)
    }
    
}
