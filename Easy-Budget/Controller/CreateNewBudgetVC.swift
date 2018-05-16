//
//  CreateNewBudgetController.swift
//  Easy-Budget
//
//  Created by Frank Garcia on 5/14/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import UIKit

class CreateNewBudgetVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var grossIncomeVal: UITextField!
    @IBOutlet weak var locationVal: UITextField!
    @IBOutlet weak var federalExptVal: UITextField!
    @IBOutlet weak var stateExptVal: UITextField!
    @IBOutlet weak var deductionsList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        grossIncomeVal.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        self.view.endEditing(true)
        performSegue(withIdentifier: "CancelSegue", sender: self)
    }
    
    @IBAction func generateBudgetPressed(_ sender: Any) {
        let budget = Budget(grossIncome: Int(grossIncomeVal.text!)!)
        performSegue(withIdentifier: "GenerateSegue", sender: budget)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let budget = sender as? Budget, let destination = segue.destination as? BudgetVC {
            destination.budget = budget
        }
    }
    
}
