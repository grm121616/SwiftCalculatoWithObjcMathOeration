//
//  Extension.swift
//  DigitalFactoryCalculatorApp
//
//  Created by Ruoming Gao on 10/31/20.
//  Copyright © 2020 Ruoming Gao. All rights reserved.
//

import Foundation

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
