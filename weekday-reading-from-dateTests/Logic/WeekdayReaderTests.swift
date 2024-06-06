//
//  WeekdayReaderTests.swift
//  weekday-reading-from-dateTests
//
//  Created by Dawid on 06/06/2024.
//

import XCTest
@testable import weekday_reading_from_date

final class WeekdayReaderTests: XCTestCase {
    private var currentDateProvider: CurrentDateProviderMock!
    private var sut: WeekdayReader!

    override func setUp() {
        super.setUp()
        currentDateProvider = CurrentDateProviderMock(getDateReturn: Date())
        sut = WeekdayReader(
            currentDateProvider: currentDateProvider
        )
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testExample() {
        guard let date = DateComponents(
            calendar: Calendar(identifier: .gregorian),
            year: 2024,
            month: 1,
            day: 1
        ).date else {
            XCTFail("Cannot create test date")
            return
        }
        currentDateProvider.getDateReturn = date
        XCTAssertEqual(.monday, sut.getCurrentWeekday())
    }
}
