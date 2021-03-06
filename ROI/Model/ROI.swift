//
//  Model.swift
//  ROI
//
//  Created by Fernando Romany on 3/14/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import Foundation

class ROI {
    class func getROI(produceCost: Double, costOfSell: Double, numberOfProductSell: Double, advCost: Double) -> String {
        let revenue = costOfSell * numberOfProductSell
        let costOfGoodsSold = produceCost * numberOfProductSell
        let result = Float((revenue - (costOfGoodsSold + advCost)) / (costOfGoodsSold + advCost))
        return "\(result * 100) %"
    }
}
