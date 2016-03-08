import UIKit
import CoreData
import AddressBookUI

public class PeopleListViewController: UITableViewController, NSFetchedResultsControllerDelegate {
  
  public var dataProvider: PeopleListDataProviderProtocol?
  public var userDefaults = NSUserDefaults.standardUserDefaults()
  public var communicator: APICommunicatorProtocol = APICommunicator()

  override public func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.leftBarButtonItem = self.editButtonItem()
    
    let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(PeopleListViewController.addPerson))
    self.navigationItem.rightBarButtonItem = addButton
    
    assert(dataProvider != nil, "dataProvider is not allowed to be nil at this point")
    tableView.dataSource = dataProvider
    dataProvider?.tableView = tableView
  }
  
  public func addPerson() {
    let picker = ABPeoplePickerNavigationController()
    picker.peoplePickerDelegate = self
    presentViewController(picker, animated: true, completion: nil)
  }

  public func fetchPeopleFromAPI() {
    let allPersonInfos = communicator.getPeople().1
    if let allPersonInfos = allPersonInfos {
      for personInfo in allPersonInfos {
        dataProvider?.addPerson(personInfo)
      }
    }
  }
  
  public func sendPersonToAPI(personInfo: PersonInfo) {
    communicator.postPerson(personInfo)
  }
  
  @IBAction func changeSorting(sender: UISegmentedControl) {
    userDefaults.setInteger(sender.selectedSegmentIndex, forKey: "sort")
    dataProvider?.fetch()
  }
  
}

extension PeopleListViewController: ABPeoplePickerNavigationControllerDelegate {
  
  public func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, didSelectPerson person: ABRecord) {
    let personInfo = PersonInfo(abRecord: person)
    dataProvider?.addPerson(personInfo)
  }
  
}

