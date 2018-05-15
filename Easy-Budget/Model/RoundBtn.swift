//
//  RoundedCornersBtn.swift
//  Easy-Budget
//
//  Created by Frank Garcia on 5/14/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import UIKit

class RoundBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()

        layer.cornerRadius = 2.0
    }

}
