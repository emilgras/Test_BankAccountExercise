//
//  BankAccountExerciseTests.swift
//  BankAccountExerciseTests
//
//  Created by Emil Gräs on 15/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import XCTest
@testable import BankAccountExercise

class BankAccountExerciseTests: XCTestCase {
    
    var account = Account()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Equivalent tests //
    
    func testgetInterestEq50balance() {
        account.setBalance(balance: 50.00)
        XCTAssertEqual(account.getInterest(), 3.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestEq500balance() {
        account.setBalance(balance: 500.00)
        XCTAssertEqual(account.getInterest(), 5.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestEq2000balance() {
        account.setBalance(balance: 2000.00)
        XCTAssertEqual(account.getInterest(), 7.0, "over 100 og under 999.99 skal give 5%")
    }
    
    // Boundary tests //
    
    func testgetInterestBoundNegativebalance() {
        account.setBalance(balance: -1.00)
        XCTAssertEqual(account.getInterest(), 0.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestBound0balance() {
        account.setBalance(balance: 0.00)
        XCTAssertEqual(account.getInterest(), 3.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestBound001balance() {
        account.setBalance(balance: 0.01)
        XCTAssertEqual(account.getInterest(), 3.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestEq9999balance() {
        account.setBalance(balance: 99.99)
        XCTAssertEqual(account.getInterest(), 3.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestEq100balance() {
        account.setBalance(balance: 100.00)
        XCTAssertEqual(account.getInterest(), 3.0, "Under eller lig med 100 skal give 3%")
    }
    
    func testgetInterestEq99998balance() {
        account.setBalance(balance: 999.98)
        XCTAssertEqual(account.getInterest(), 5.0, "over 100 og under eller lig med 999.99 skal give 5%")
    }

    func testgetInterestEq99999balance() {
        account.setBalance(balance: 999.99)
        XCTAssertEqual(account.getInterest(), 5.0, "over 100 og under eller lig med 999.99 skal give 5%")
    }
    
    func testgetInterestEq1000balance() {
        account.setBalance(balance: 1000.00)
        XCTAssertEqual(account.getInterest(), 7.0, "over eller lig med 1000 skal give 7%")
    }
    
    func testgetInterestEq100001balance() {
        account.setBalance(balance: 1000.01)
        XCTAssertEqual(account.getInterest(), 7.0, "over eller lig med 1000 skal give 7%")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.f
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
