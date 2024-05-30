//
//  WeekdayReader.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import Foundation

final class WeekdayReader {
    private let calendar = Calendar(identifier: .gregorian)

    func getCurrentWeekday() -> Weekday? {
        let now = Date()
        let weekdayNumber = calendar.component(.weekday, from: now)
        return mapWeekdayNumberToWeekday(weekdayNumber)
    }
    
    private func mapWeekdayNumberToWeekday(_ weekdayNumber: Int) -> Weekday? {
        switch weekdayNumber {
        case 1: 
            return .sunday
        case 2: 
            return .monday
        case 3: 
            return .tuesday
        case 4: 
            return .wednesday
        case 5: 
            return .thursday
        case 6: 
            return .friday
        case 7: 
            return .saturday
        default:
            return nil
        }
    }
}
