import UIKit

// sending the meeting times
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

/// merge the meeting times
func mergeRanges(in meetings: [Meeting]) -> [Meeting] {

  // make a copy so we don't destroy the input
  var sortedMeetings = meetings.map {
      Meeting(startTime: $0.startTime, endTime: $0.endTime)
  }

  // sort by start time
  sortedMeetings.sort { $0.startTime < $1.startTime }

  // initialize mergedMeetings with the earliest meeting
  var mergedMeetings = [sortedMeetings[0]]

  for i in 1..<sortedMeetings.count {
      let currentMeeting = sortedMeetings[i]
      let lastMergedMeeting = mergedMeetings[mergedMeetings.count - 1]

      if currentMeeting.startTime <= lastMergedMeeting.endTime {

          // if the current meeting overlaps with the last merged meeting, use the
          // later end time of the two
          lastMergedMeeting.endTime = max(lastMergedMeeting.endTime,
                                          currentMeeting.endTime)
      } else {

          // add the current meeting since it doesn't overlap
          mergedMeetings.append(currentMeeting)
      }
  }

  return mergedMeetings
}
