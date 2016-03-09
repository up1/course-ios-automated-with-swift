import Foundation

class NewQuoteViewModel {
    let context: MyContext = MyContext.defaultContext
    
    var content: String = ""
    var delegate: NewQuoteViewModelDelegate?
    
    init(delegate: NewQuoteViewModelDelegate) {
        self.delegate = delegate
    }
    
    func saveNewQuote() {
        if validateInput() {
            self.delegate?.showInvalidContent()
            self.delegate?.showInvalidContent()
        } else {
            context.addNewQuote(content)
            self.delegate?.dismissAddView()
        }
    }
    
    func validateInput() -> Bool {
        return self.content == ""
    }
    
}

class StubDelegate: NewQuoteViewModelDelegate {
    var calledCount = 0
    func dismissAddView() {
    }
    
    func showInvalidContent() {
        calledCount += 1
    }
}



