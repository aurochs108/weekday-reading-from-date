//
//  ContentViewModel.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import Foundation

final class ContentViewModel {
    private let weekdayReader = WeekdayReader()
    
    func getCurrentWeekday() -> Weekday? {
        weekdayReader.getWeekday(daysToAdd: 0)
    }
}
