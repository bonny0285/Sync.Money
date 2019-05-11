//
//  ViewController.swift
//  Sync.Money
//
//  Created by Massimiliano on 10/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class AccountVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    @IBOutlet weak var cardBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var marketBtn: UIButton!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var accountBtn: UIButton!
    
    @IBOutlet weak var accountControllerCell: UICollectionView!
    @IBOutlet weak var bankControllerCell: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountControllerCell.delegate = self
        accountControllerCell.dataSource = self
        
        bankControllerCell.dataSource = self
        bankControllerCell.delegate = self
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.accountControllerCell {
            return 1
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.accountControllerCell {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: ACCOUNT_CELL, for: indexPath) as? AccountCell
            return cellA!
        } else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: BANK_CELL, for: indexPath) as? BankCell
            return cellB!
    }

}
}
