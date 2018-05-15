//
//  Budget.swift
//  Easy-Budget
//
//  Created by Frank Garcia on 5/14/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import Foundation

class Budget {
    
    private var _grossIncome: Int!
    
    var grossIncome: Int {
        return _grossIncome
    }
    
    init(grossIncome: Int) {
        self._grossIncome = grossIncome
    }
}
