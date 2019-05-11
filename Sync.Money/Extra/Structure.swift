//
//  Structure.swift
//  Sync.Money
//
//  Created by Massimiliano on 11/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

struct Bank{
    private(set) var bankImage: UIImage
    private(set) var money: Double
    private(set) var accountNumber: Int
    private(set) var sortCodeNumber: String
    private(set) var availableMoney: Double
    private(set) var overdraft: Double
    
    init(bankImage: UIImage, money: Double,accountNumber: Int, sortCodeNumber : String, availableMoney: Double
        , overdraft: Double) {
        self.bankImage = bankImage
        self.money = money
        self.accountNumber = accountNumber
        self.sortCodeNumber = sortCodeNumber
        self.availableMoney = availableMoney
        self.overdraft = overdraft
    }
}
