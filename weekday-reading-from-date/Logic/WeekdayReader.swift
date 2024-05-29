//
//  WeekdayReader.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import Foundation

final class WeekdayReader {
    private let calendar = Calendar(identifier: .gregorian)

    func getWeekday(daysToAdd: Int) -> Weekday? {
        let now = Date()

        let date: Date?
        if daysToAdd == 0 {
            date = now
        } else {
            date = Calendar.current.date(
                byAdding: .day,
                value: daysToAdd,
                to: now
            )
        }
        guard let date else { return nil }
        let weekdayNumber = calendar.component(.weekday, from: date)
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
