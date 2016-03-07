import Foundation
import CoreData

public class Person: NSManagedObject {
  
  @NSManaged var firstName: String
  @NSManaged var lastName: String
  @NSManaged var birthday: NSDate
  
  var fullname: String {
    return "\(firstName) \(lastName)"
  }
}
