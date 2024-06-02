//
//  WeekdayReader.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import Foundation

final class WeekdayReader {
    private let calendar = Calendar(identifier: .gregorian)
    
    init() {
        printFirstWeekdayOfCalendars()
    }

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
    
    func getLocalisable(for weekday: Weekday) -> String? {
        let day: Int
        switch weekday {
        case .monday:
            day = 1
        case .tuesday:
            day = 2
        case .wednesday:
            day = 3
        case .thursday:
            day = 4
        case .friday:
            day = 5
        case .saturday:
            day = 6
        case .sunday:
            day = 7
        }
        guard let date = DateComponents(
            calendar: Calendar(identifier: .gregorian),
            year: 2024,
            month: 1,
            day: day
        ).date else { return nil }
        
        let format = Date.FormatStyle()
            .weekday(.wide)
            .locale(Locale.current)
        return date.formatted(format)
    }
    
    func localisable() -> String {
        let format = Date.FormatStyle()
            .weekday(.wide)
            .locale(Locale.current)
        return Date()
            .formatted(format)
    }
    
    func printFirstWeekdayOfCalendars() {
        print("Calendar.current: \(Calendar.current.identifier) - \(Calendar.current.firstWeekday)")
        print("Calendar .gregorian - \(Calendar(identifier: .gregorian).firstWeekday)")
        print("Calendar .iso8601 - \(Calendar(identifier: .iso8601).firstWeekday)")
        print("Calendar .buddhist - \(Calendar(identifier: .buddhist).firstWeekday)")
    }
}
