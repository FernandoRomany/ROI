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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

