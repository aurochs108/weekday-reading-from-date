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
        self.selectedDay = weekdayReader.getCurrentWeekday() ?? .monday
    }
    
    func getPromotion(for selectedDay: Weekday) -> String {
        switch selectedDay {
        case .monday:
            "Buy 2 🍸 pay for 1"
        case .tuesday:
            "Big 🍸 50% off"
        case .wednesday:
            "Red 🍸 25% off till 4PM"
        case .thursday:
            "Blue 🍸 25% off till 3PM"
        case .friday:
            "Buy 10 ☕️ pay for 9"
        case .saturday:
            "Buy 10 ☕️ get 1 free"
        case .sunday:
            "Pay at least 100$ and get free ☕️"
        }
    }
    
    func getLocalisable(for weekday: Weekday) -> String? {
        weekdayReader.getLocalisable(for: weekday)
    }
}
