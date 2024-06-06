//
//  CurrentDateProvider.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 06/06/2024.
//

import Foundation

final class CurrentDateProvider: CurrentDateProviderProtocol {
    func getDate() -> Date {
        Date()
    }
}
