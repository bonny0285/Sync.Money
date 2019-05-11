//
//  BankCell.swift
//  Sync.Money
//
//  Created by Massimiliano on 10/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class BankCell: UICollectionViewCell {
    
    @IBOutlet weak var bankImage: UIImageView!
    
    @IBOutlet weak var bankAccountNumberLbl: UILabel!
    @IBOutlet weak var sortCodeNumberLbl: UILabel!
    
    @IBOutlet weak var moneyAccountLbl: UILabel!
    
    @IBOutlet weak var availableMoneyLbl: UILabel!
    
    @IBOutlet weak var overdraftMoneyLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 12
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 15
        layer.shadowOpacity = 0.75
    }
    
    
    func initBankCell(bank: Bank){
        self.bankImage.image = bank.bankImage
        self.bankAccountNumberLbl.text = "\(bank.accountNumber)"
        self.sortCodeNumberLbl.text = bank.sortCodeNumber
        self.moneyAccountLbl.text = "\(bank.money.twoDecimalNumbers(place: 2).delimiter)"
        self.availableMoneyLbl.text = "\(bank.availableMoney.twoDecimalNumbers(place: 2).delimiter)"
        self.overdraftMoneyLbl.text = "\(bank.overdraft.twoDecimalNumbers(place: 2).delimiter)"
    }
}
