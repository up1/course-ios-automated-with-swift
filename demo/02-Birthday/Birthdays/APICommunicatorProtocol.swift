import Foundation

public protocol APICommunicatorProtocol {
  func getPeople() -> (NSError?, [PersonInfo]?)
  func postPerson(personInfo: PersonInfo) -> NSError?
}