//
//  AccountCell.swift
//  Sync.Money
//
//  Created by Massimiliano on 10/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class AccountCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var totMoneyLbl: UILabel!
    @IBOutlet weak var avilableMoneyAccLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 12
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 15
        layer.shadowOpacity = 0.75
    }
    
    
    func initAccountCell (account: Account){
        self.totMoneyLbl.text = "\(account.totMoney.twoDecimalNumbers(place: 2).delimiter)"
        self.avilableMoneyAccLbl.text = "\(account.availableMoney.twoDecimalNumbers(place: 2).delimiter)"
    }
    
}
