//
//  CurrentDateProviderMock.swift
//  weekday-reading-from-dateTests
//
//  Created by Dawid on 06/06/2024.
//

import Foundation
@testable import weekday_reading_from_date

final class CurrentDateProviderMock: CurrentDateProviderProtocol {
    var getDateReturn: Date
    
    init(getDateReturn: Date) {
        self.getDateReturn = getDateReturn
    }
    
    func getDate() -> Date {
        getDateReturn
    }
}
