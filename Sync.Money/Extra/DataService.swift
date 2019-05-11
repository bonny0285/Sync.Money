//
//  DataService.swift
//  Sync.Money
//
//  Created by Massimiliano on 11/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class DataService{
    static let instance = DataService()
    private(set) var tot = 0.0
    private(set) var totAvg = 0.0
    var i = 0
    
    private let bankAccount = [
        Bank(bankImage: #imageLiteral(resourceName: "Lloyds_Bank"), money: 6725.14, accountNumber: 78128321, sortCodeNumber: "44-62-11", availableMoney: 6494.02, overdraft: 2500.00),
        Bank(bankImage: #imageLiteral(resourceName: "Halifax"), money: 10055.47, accountNumber: 17021985, sortCodeNumber: "17-02-85", availableMoney: 10000.88, overdraft: 1000.00),
        Bank(bankImage: #imageLiteral(resourceName: "barclays-png-making-savings-a-dream-a-review-of-barclays-online-bank-818"), money: 1055.47, accountNumber: 17021985, sortCodeNumber: "17-02-85", availableMoney: 100.88, overdraft: 1000.00),
        Bank(bankImage: #imageLiteral(resourceName: "hsbc-logo"), money: 105.47, accountNumber: 17021985, sortCodeNumber: "17-02-85", availableMoney: 600.88, overdraft: 1000.00),
        Bank(bankImage: #imageLiteral(resourceName: "NW_logo_still"), money: 55.47, accountNumber: 17021985, sortCodeNumber: "17-02-85", availableMoney: 10000.88, overdraft: 1000.00)
    ]
    
    func getBankAccounts() ->[Bank]{
        return bankAccount
    }

    private let yourAccount = [
        Account(totMoney: 6725.21, availableMoney: 6712.80),
      //  Account(totMoney: 6725.21, availableMoney: 6712.80),
      //  Account(totMoney: 6725.21, availableMoney: 6712.80),
      // Account(totMoney: 6725.21, availableMoney: 6712.80),
    ]
    
    func getYourAccount() -> [Account]{
        return yourAccount
    }
    
    
    func getTotalAmount() -> Double{
        for x in bankAccount {
            tot += x.money
            i += 1
            print("totale \(tot)")
        }
        return tot
    }
    
    func getTotalAvailableAmount() -> Double{
        for x in bankAccount{
            totAvg += x.availableMoney
            i += 1
            print("tale available\(tot)")
        }
        return totAvg
    }
}
