import Foundation

public struct Location {
  public let latitude: Double
  public let longitude: Double
  
  public init (latitude: Double, longitude: Double) {
    self.latitude = latitude
    self.longitude = longitude
  }
}

public struct JournalEntry {
  public let title: String
  public let text: String
  public let date: NSDate
  
  public var location: Location?
  
  public init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}

