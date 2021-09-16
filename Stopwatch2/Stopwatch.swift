//
//  Stopwatch.swift
//  Stopwatch2
//
//  Created by Megan Lin on 9/16/21.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?

  func start() {
    startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  var isRunning: Bool {
    if startTime != nil {
      return true
    } else {
      return false
    }
  }
}
