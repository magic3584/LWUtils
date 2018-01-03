//
//  LWLocationManager.swift
//  Demo
//
//  Created by wang on 26/12/2017.
//  Copyright © 2017 wang. All rights reserved.
//

import Foundation
import MapKit

open class LWLocationManager: NSObject, CLLocationManagerDelegate {
    public static let shared = LWLocationManager()
    let manager = CLLocationManager()
    let geoCoder = CLGeocoder()
    
    var handler: ((CLPlacemark) -> ())?
    var coordinateHandler: ((CLPlacemark) -> ())?
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    public func getAddress(handler: @escaping (CLPlacemark) -> ()) {
        self.handler = handler
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    public func getCoordinateBy(address: String, handler: @escaping (CLPlacemark) -> ()) {
        self.coordinateHandler = handler
        CLGeocoder().geocodeAddressString(address) { (placemarks, error) in
            if let placemark = placemarks?.first {
                self.coordinateHandler?(placemark)
            }
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            manager.stopUpdatingLocation()
            geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) in
                if let placemark = placemarks?.first {
                    self.handler?(placemark)
                }
            })
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            print("notDetermined")
        case .restricted:
            print("restricted")
        case .denied:
            print("denied")
        case .authorizedAlways:
            print("always")
        case .authorizedWhenInUse:
            manager.startUpdatingLocation()
        }
    }
}
