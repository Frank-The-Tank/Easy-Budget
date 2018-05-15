//
//  BudgetVC.swift
//  Easy-Budget
//
//  Created by Frank Garcia on 5/14/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import UIKit

class BudgetVC: UIViewController {
    
    var budget: Budget!
    
    @IBOutlet weak var netIncome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        netIncome.text = String(budget.grossIncome / 12)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
