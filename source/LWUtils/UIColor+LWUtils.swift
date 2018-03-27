//
//  UIColor+LWUtils.swift
//  Demo
//
//  Created by wang on 27/03/2018.
//  Copyright © 2018 wang. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func rgbColor(red: Int, green: Int, blue: Int) -> UIColor {
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1)
    }
}
