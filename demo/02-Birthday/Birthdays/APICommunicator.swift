import UIKit

public struct APICommunicator: APICommunicatorProtocol {
  public func getPeople() -> (NSError?, [PersonInfo]?) {
    return (nil, nil)
  }
  
  public func postPerson(personInfo: PersonInfo) -> NSError? {
    return nil
  }
}