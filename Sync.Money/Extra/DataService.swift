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
    
    private let accounts = [
        Bank(bankImage: #imageLiteral(resourceName: "Lloyds_Bank"), money: 6725.14, accountNumber: 78128321, sortCodeNumber: "44-62-11", availableMoney: 6494.02, overdraft: 2500.00),
        Bank(bankImage: #imageLiteral(resourceName: "Halifax"), money: 10055.47, accountNumber: 17021985, sortCodeNumber: "17-02-85", availableMoney: 10000.88, overdraft: 1000.00)
    ]
    
    func getAccounts() ->[Bank]{
        return accounts
    }
}
