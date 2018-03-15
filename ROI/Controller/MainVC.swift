//
//  MainVC.swift
//  ROI
//
//  Created by Fernando Romany on 3/14/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var ppcTxt: TextField!
    @IBOutlet weak var costOfSellTxt: TextField!
    @IBOutlet weak var numOfSellTxt: TextField!
    @IBOutlet weak var advCostTxt: TextField!
    @IBOutlet weak var yourROIIsLbl: UILabel!
    @IBOutlet weak var resultROILbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        ppcTxt.inputAccessoryView = calcButton
        costOfSellTxt.inputAccessoryView = calcButton
        numOfSellTxt.inputAccessoryView = calcButton
        advCostTxt.inputAccessoryView = calcButton
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func calculate() {
        if let ppcTxt = ppcTxt.text, let costOfSellTxt = costOfSellTxt.text, let numOfSellTxt = numOfSellTxt.text, let advCostTxt = advCostTxt.text {
            if let ppc = Double(ppcTxt), let costOfSell = Double(costOfSellTxt), let numOfSell = Double(numOfSellTxt), let advCost = Double(advCostTxt) {
                view.endEditing(true)
                yourROIIsLbl.isHidden = false
                resultROILbl.isHidden = false
                resultROILbl.text = "\(ROI.getROI(produceCost: ppc, costOfSell: costOfSell, numberOfProductSell: numOfSell, advCost: advCost))"
            }
        }
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        
        ppcTxt.text = ""
        costOfSellTxt.text = ""
        numOfSellTxt.text = ""
        advCostTxt.text = ""
        yourROIIsLbl.isHidden = true
        resultROILbl.isHidden = true
        
    }
    
}

