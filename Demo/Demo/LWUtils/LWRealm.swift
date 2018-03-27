//
//  LWRealm.swift
//  Demo
//
//  Created by wang on 27/03/2018.
//  Copyright © 2018 wang. All rights reserved.
//

import Foundation
//import RealmSwift
//
//class LWRealm {
//    static var permanent: Realm!
//    static var cache: Realm!
//
//    class func config() {
//
//        let version: UInt64 = 32
//
//        let config = Realm.Configuration(schemaVersion: version, migrationBlock: { migration, oldSchemaVersion in
//        })
//        Realm.Configuration.defaultConfiguration = config
//
//        if permanent == nil {
//            permanent = try! Realm()
//        }
//
//        if cache == nil {
//            let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask,
//                                                                 appropriateFor: nil, create: false)
//            let url = documentDirectory.appendingPathComponent("cache.realm")
//            var config = Realm.Configuration()
//            config.fileURL = url
//            config.schemaVersion = version
//            config.migrationBlock = { migration, oldSchemaVersion in
//
//            }
//
//            cache = try! Realm(configuration: config)
//        }
//
//    }
//}

