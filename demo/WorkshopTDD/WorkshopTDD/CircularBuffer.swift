class CircularBuffer{
    
    var count = 0
    var elements: [String] = []

    func empty() -> Bool {
        return self.elements.isEmpty
    }
    
    func insert(element: String) {
        self.elements.append(element)
    }
    
    func remove() -> String {
        return self.elements.removeFirst()
    }
    
    func size() -> Int {
        return self.elements.count
    }
    
}
