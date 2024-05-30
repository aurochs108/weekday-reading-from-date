//
//  ContentViewModel.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import Foundation

final class ContentViewModel: ObservableObject {
    @Published var selectedDay: Weekday = .monday
    private let weekdayReader = WeekdayReader()
    
    init() {
        self.selectedDay = weekdayReader.getWeekday(daysToAdd: 0) ?? .monday
    }
    
    func getCurrentWeekday() -> Weekday? {
        weekdayReader.getWeekday(daysToAdd: 0)
    }
}
