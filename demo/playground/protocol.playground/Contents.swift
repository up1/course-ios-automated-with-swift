protocol Interactor {
    func getData() -> [String]
}

class RealNetwork: Interactor {
    func getData() -> [String] {
        return ["data1", "data2"]
    }
}

class FakeNetwork: Interactor {
    func getData() -> [String] {
        return ["fake 1", "fake 2"]
    }
}


class MyProcess {
    var interactor: Interactor?
    
    func showData() {
        print(self.interactor?.getData()[0])
    }
    
}

let object = MyProcess()
object.interactor = RealNetwork()
object.showData()

object.interactor = FakeNetwork()
object.showData()



protocol Operator {
    func toString() -> String
}

class RealOperator: Operator {
    func toString() -> String {
        return "real operator"
    }
}

class StubAddOperator: Operator {
    func toString() -> String {
        return "+"
    }
}






















