//
//  Account.swift
//  BankAccountExercise
//
//  Created by Emil Gräs on 15/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

class Account {
    
    fileprivate var balance: Double!
    
    func getBalance() -> Double {
        return balance
    }
    
    func setBalance(balance: Double) {
        self.balance = balance
    }
    
    func getInterest() -> Double {
        if balance >= 0.00 && balance <= 100.00 {
            return 3.00
        } else if balance > 100 && balance < 1000.00 {
            return 5.00
        } else if balance >= 1000.00 {
            return 7.00
        } else {
            return 0.00
        }
    }
    
}
