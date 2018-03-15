//
//  BtnView.swift
//  ROI
//
//  Created by Fernando Romany on 3/15/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class BtnView : MainVC {
    
    @IBAction func calculateBtn(_ sender: Any) {
        if let ppcTxt = ppcTxt.text, let costOfSellTxt = costOfSellTxt.text, let numOfSellTxt = numOfSellTxt.text, let advCostTxt = advCostTxt.text {
            if let ppc = Double(ppcTxt), let costOfSell = Double(costOfSellTxt), let numOfSell = Double(numOfSellTxt), let advCost = Double(advCostTxt) {
                view.endEditing(true)
                yourROIIsLbl.isHidden = false
                resultROILbl.isHidden = false
                resultROILbl.text = "\(ROI.getROI(produceCost: ppc, costOfSell: costOfSell, numberOfProductSell: numOfSell, advCost: advCost))"
            }
        }
    }
}
