//
//  Extra.swift
//  Sync.Money
//
//  Created by Massimiliano on 11/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import Foundation

//Decide how many decimal place you need
extension Double {
    func twoDecimalNumbers(place: Int) -> Double{
        let divisor = pow(10.0, Double(place))
        return (self * divisor).rounded() / divisor
    }
}

//Insert comma after three numbers
extension Double {
    private static var numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter
    }()
    
    var delimiter: String {
        return Double.numberFormatter.string(from: NSNumber(value: self)) ?? ""
    }
}
