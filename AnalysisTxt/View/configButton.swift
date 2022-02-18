//
//  configButton.swift
//  AnalysisTxt
//
//  Created by Hamza on 2/15/22.
//  Copyright © 2022 Hamza. All rights reserved.
//

import UIKit

class configButton: UIButton {

    override func awakeFromNib() {
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }

}
