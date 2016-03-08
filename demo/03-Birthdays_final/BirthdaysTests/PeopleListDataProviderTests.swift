//
//  PeopleListDataProviderTests.swift
//  Birthdays
//
//  Created by somkiat puisungnoen on 3/8/2559 BE.
//  Copyright © 2559 Dominik Hauser. All rights reserved.
//

import UIKit
import XCTest
import Birthdays
import CoreData

class PeopleListDataProviderTests: XCTestCase {
    
    var managedObjectContext: NSManagedObjectContext!
    var storeCoordinator: NSPersistentStoreCoordinator!
    var managedObjectModel: NSManagedObjectModel!
    var store: NSPersistentStore!
    
    var dataProvider: PeopleListDataProvider!
    var viewController: PeopleListViewController!
    
    var tableView: UITableView!
    var testRecord: PersonInfo!
    
    override func setUp() {
        super.setUp()
        
        managedObjectModel = NSManagedObjectModel.mergedModelFromBundles(nil)!
        storeCoordinator = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
        store = try? storeCoordinator.addPersistentStoreWithType(NSInMemoryStoreType, configuration: nil, URL: nil, options: nil)
        managedObjectContext = NSManagedObjectContext()
        managedObjectContext.persistentStoreCoordinator = storeCoordinator
        
        dataProvider = PeopleListDataProvider()
        dataProvider.managedObjectContext = managedObjectContext
        
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("PeopleListViewController") as! PeopleListViewController
        
        viewController.dataProvider = dataProvider
        
        tableView = viewController.tableView
        
        testRecord = PersonInfo(firstName: "FirstName",
                                lastName: "LastName",
                                birthday: NSDate())
    }
    
    override func tearDown() {
        managedObjectContext = nil
        _ = try? storeCoordinator.removePersistentStore(store)
        
        super.tearDown()
    }
    
    func testSetupDataSuccessfully() {
        XCTAssertNotNil(store, "Setup persistence store")
    }
    
    
    func testOnePersonInThePersistantStoreResultsInOneRow() {
        //Act
        dataProvider.addPerson(testRecord)
        
        //Assert
        XCTAssertEqual(tableView.dataSource!.tableView(
                       tableView, numberOfRowsInSection: 0),1,
                       "After adding one person number of rows should be 1")
    }
    
    func testPersonCellShowsFullName() {
        //Act
        dataProvider.addPerson(testRecord)
        
        //Assert
        let cell = tableView.dataSource!.tableView(
            tableView,
            cellForRowAtIndexPath: NSIndexPath(forRow: 0, inSection: 0)) as UITableViewCell
        
        XCTAssertEqual(cell.textLabel!.text!, "FirstName LastName", "Full name is not as expected")
    }
    
}
