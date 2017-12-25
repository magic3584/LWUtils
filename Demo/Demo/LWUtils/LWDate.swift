//
//  LWDate.swift
//  Demo
//
//  Created by wang on 25/12/2017.
//  Copyright © 2017 wang. All rights reserved.
//

import Foundation

open class LWDate {
    public class func is12HoursFormat() -> Bool {
        let dateString : String = DateFormatter.dateFormat(fromTemplate: "j", options: 0, locale: Locale.current)!
        
        if(dateString.contains("a")){
            // 12 h format
            return true
        }else{
            // 24 h format
            return false
        }
    }
}
