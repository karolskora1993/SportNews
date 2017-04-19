//
//  UIViewExtension.swift
//  SportNews
//
//  Created by apple on 19.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var isCircle:Bool {
    get {
        return self.isCircle
    }
    set {
        if newValue == true {
            self.layer.cornerRadius = self.frame.height/2
        }else {
            self.layer.cornerRadius = 0
        }
    }
    }
    
}
