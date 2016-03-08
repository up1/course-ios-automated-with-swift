//
//  PeopleListViewControllerTests.swift
//  Birthdays
//
//  Created by somkiat puisungnoen on 3/8/2559 BE.
//  Copyright © 2559 Dominik Hauser. All rights reserved.
//

import UIKit
import AddressBookUI
import XCTest
import Birthdays

class PeopleListViewControllerTests: XCTestCase {
    
    var viewController: PeopleListViewController!
    
    override func setUp() {
        super.setUp()
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("PeopleListViewController") as! PeopleListViewController
        
    }
    
    override func tearDown() {
                super.tearDown()
    }
    
    func testAddPersonShouldBeSet() {
        viewController.dataProvider = MockDataProvider()
        
        let _ = viewController.view
        
        let addPersonButton = viewController.navigationItem.rightBarButtonItem
        
        XCTAssertNotNil(addPersonButton, "Should not null")
        XCTAssertEqual(addPersonButton?.action, #selector(PeopleListViewController.addPerson))
    }
    
    func testSetTableViewToDataProviderAfterLoadingView() {
        //Arrange
        let mockProvider = MockDataProvider()
        viewController.dataProvider = mockProvider
        
        //Act
        XCTAssertNil(mockProvider.tableView, "Before loading the tableview should be null")
        let _ = viewController.view
        
        //Assert
        XCTAssertNotNil(mockProvider.tableView, "The tableview should be set")
        XCTAssertEqual(mockProvider.tableView, viewController.tableView)
        
    }
    
    func testCalledAddPersonOfDataProviderAfterAddingPerson() {
        //Arrange
        let mockProvider = MockDataProvider()
        viewController.dataProvider = mockProvider
        
        //Act
        let record: ABRecord = ABPersonCreate().takeRetainedValue()
        ABRecordSetValue(record, kABPersonFirstNameProperty, "MockFirstname", nil)
        ABRecordSetValue(record, kABPersonLastNameProperty, "MockLastname", nil)
        ABRecordSetValue(record, kABPersonBirthdayProperty, NSDate(), nil)
        viewController.peoplePickerNavigationController(
            ABPeoplePickerNavigationController(), didSelectPerson: record)
        
        //Assert
        XCTAssert(mockProvider.addPersonGotCalled,
                  "addPerson should have been called")
    }
    
    func testFetchingPeopleFromAPIShouldBeCalledAddPerson() {
        //Arrange
        let mockProvider = MockDataProvider()
        viewController.dataProvider = mockProvider
        
        let mockAPI = MockAPICommunicator()
        mockAPI.allPersonInfo =
            [PersonInfo(firstName: "Firstname", lastName: "Lastname", birthday: NSDate())]
        viewController.communicator = mockAPI
        
        //Act
        viewController.fetchPeopleFromAPI()
        
        //Assert
        XCTAssertTrue(mockProvider.addPersonGotCalled,
                      "addPerson should have been called")
    }
    
    func testSendingPeopleToAPIShouldBeCalledPostPerson() {
        //Arrange
        let mockProvider = MockDataProvider()
        viewController.dataProvider = mockProvider
        
        let mockAPI = MockAPICommunicator()
        viewController.communicator = mockAPI
        
        //Act
        viewController.sendPersonToAPI(PersonInfo(firstName: "Firstname",
            lastName: "Lastname", birthday: NSDate()))
        
        
        //Assert
        XCTAssertTrue(mockAPI.postPersonGotCalled,
                      "postPerson should have been called")
    }
    
}

class MockAPICommunicator: APICommunicatorProtocol {
    var allPersonInfo = [PersonInfo]()
    var postPersonGotCalled = false
    
    func getPeople() -> (NSError?, [PersonInfo]?) {
        return (nil, allPersonInfo)
    }
    
    func postPerson(personInfo: PersonInfo) -> NSError? {
        postPersonGotCalled = true
        return nil
    }
}

class MockDataProvider: PeopleListDataProvider {
    var addPersonGotCalled = false
    
    override func addPerson(personInfo: PersonInfo) { addPersonGotCalled = true }
    override func fetch() { }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return 1 }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { return UITableViewCell() }
}
