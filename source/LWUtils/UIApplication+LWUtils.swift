//
//  UIApplication+LWUtils.swift
//  Demo
//
//  Created by wang on 25/12/2017.
//  Copyright © 2017 wang. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    public class func lw_topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return lw_topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return lw_topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return lw_topViewController(base: presented)
        }
        return base
    }
}

