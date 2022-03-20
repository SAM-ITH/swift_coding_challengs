import UIKit

class Meeting: CustomStringConvertible {

  var startTime: Int
  var endTime: Int

  init(startTime: Int, endTime: Int) {

      // number of 30 min blocks past 9:00 am
      self.startTime = startTime
      self.endTime = endTime
  }

  var description: String {
      return "(\(startTime), \(endTime))"
  }
}
