//
//  BorderButton.swift
//  woosh
//
//  Created by Duong Dang Hoang on 12/11/17.
//  Copyright © 2017 Duong. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
