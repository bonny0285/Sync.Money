//
//  NewAccountVC.swift
//  Sync.Money
//
//  Created by Massimiliano on 11/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class NewAccountVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var bankCollectionView: UICollectionView!
    @IBOutlet weak var accountCollectionView: UICollectionView!
    
    @IBOutlet weak var scrollViewController: UIScrollView!
    
    @IBOutlet weak var viewScrollContainer: UIView!
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bankCollectionView.delegate = self
        bankCollectionView.dataSource = self
        
        accountCollectionView.delegate = self
        accountCollectionView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
     
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.accountCollectionView {
            return DataService.instance.getYourAccount().count
        }
        return DataService.instance.getBankAccounts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.accountCollectionView {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: ACCOUNT_CELL, for: indexPath) as? AccountCell
                let indexYourAccount = DataService.instance.getYourAccount()[indexPath.row]
                cellA?.initAccountCell(account: indexYourAccount)
            return cellA!
        } else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: BANK_CELL, for: indexPath) as? BankCell
            let indexAccount = DataService.instance.getBankAccounts()[indexPath.row]
            cellB?.initBankCell(bank: indexAccount)
            return cellB!
        }
    }

}
