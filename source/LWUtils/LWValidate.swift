//
//  LWValidate.swift
//  Demo
//
//  Created by wang on 25/12/2017.
//  Copyright © 2017 wang. All rights reserved.
//

import Foundation

open class LWValidate {
    public class func isMobileNumber(_ mobileNum: String) -> Bool {
        let mobile = "^1[0-9]{10}$"
        let regextestmobile = NSPredicate(format: "SELF MATCHES %@", mobile)
        return regextestmobile.evaluate(with: mobileNum)
    }
    
    public class func isEmail(_ email:String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
    
    public class func isFloat(_ str: String) -> Bool {
        let regex = "^(?:\\d+(?:\\.\\d*)?|\\.\\d+)$"
        let test = NSPredicate(format:"SELF MATCHES %@", regex)
        return test.evaluate(with: regex)
    }
}
