class Shape {
    init() {}
    func area() -> Double {
        return 0
    }
}
class Rectangle: Shape {
    override init(){
        super.init()
    }
}


struct Point2D {
    var x: Int = 0
    var y: Int = 0
    init() {}
}

class Direction{
    var startPoint: Point2D = Point2D()
    var endPoint: Point2D = Point2D()
    
}


struct Resolution {
    var width: Int = 0
    var height: Int = 0
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

func change( inout target: Resolution ) {
    target.width = 2000
}

var normal = Resolution(width: 600, height: 480)
var hd = normal
normal.width = 400

hd.width
normal.width
hd.width









