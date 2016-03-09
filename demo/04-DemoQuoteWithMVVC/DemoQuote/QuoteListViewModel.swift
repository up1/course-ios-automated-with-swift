class QuoteListViewModel {
    
    let context: MyContext = MyContext.defaultContext
    private var quotes: [String] = []
    var data: Interactor!
    
    init() {
//        data = FakeData()
//        quotes = data.getData()
//        for quote in quotes {
//            context.addNewQuote(quote)
//        }
    }
    
    func numberOfQuote() -> Int {
        return quotes.count
    }
    
    func quoteName(index: Int) -> String {
        return quotes[index]
    }
    
    func refresh() {
        quotes = context.quotes
    }
   
}

protocol Interactor {
    func getData() -> [String]
}

class FakeData: Interactor {
    func getData() -> [String] {
        return ["Fake1", "Fake2"]
    }
}
