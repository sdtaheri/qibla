//
//  LocationManager.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 10/26/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import Foundation
import CoreLocation
import Combine

final class LocationManager: NSObject, ObservableObject {

	@Published private(set) var authorization: CLAuthorizationStatus = CLLocationManager.authorizationStatus()
    @Published private(set) var lastLocation: CLLocation?
    @Published private(set) var lastHeading: CLHeading?

    private let manager = CLLocationManager()

	private let userSettings = UserSettings()

    override init() {
        super.init()
        self.manager.delegate = self
        self.manager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
    }

	func requestAuthorization() {
        manager.requestWhenInUseAuthorization()
	}

	func requestLocation() {
		manager.requestLocation()
	}

	func startUpdatingHeading() {
		manager.startUpdatingHeading()
	}

	func stopUpdatingHeading() {
		manager.stopUpdatingHeading()
	}
}

extension LocationManager: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        self.authorization = status
		switch status {
		case .authorizedAlways, .authorizedWhenInUse:
			requestLocation()
		default:
			break
		}
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        self.lastLocation = location
		userSettings.userCoordinate = location.coordinate
    }

	func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
		print(error.localizedDescription)
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
		self.lastHeading = newHeading
		print(newHeading)
	}
}
