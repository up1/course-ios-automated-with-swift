
import UIKit
let name = "ddd"
print("Hello \(name)")

func hello(name: String,
           completion: ((result: String?, error: NSError?)-> Void)) {
    
    if(name == "error") {
        let error = NSError(domain: "Wrong name", code: 1, userInfo: nil)
        return completion(result: nil, error: error)
    }
    return completion(result: "Hello \(name)", error: nil)
    
}

hello("somkiat") { (result, error) -> Void in
    print(result)
}


