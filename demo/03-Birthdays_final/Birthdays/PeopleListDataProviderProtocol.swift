import UIKit
import CoreData
import AddressBookUI

public protocol PeopleListDataProviderProtocol: UITableViewDataSource {
  var managedObjectContext: NSManagedObjectContext? { get }
  weak var tableView: UITableView! { get set }
  
  func addPerson(personInfo: PersonInfo)
  func fetch()
}
