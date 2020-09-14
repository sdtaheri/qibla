//
//  LocationManager.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 10/26/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import CoreLocation
import SwiftUI

final class LocationManager: NSObject, ObservableObject {

	@Published private(set) var authorization: CLAuthorizationStatus = .notDetermined
	@Published private(set) var lastLocation: CLLocation?
	@Published private(set) var lastHeading: CLHeading?

	private let manager = CLLocationManager()

	@AppStorage(StorageKey.userLatitude) private var userLatitude: Double?
	@AppStorage(StorageKey.userLongitude) private var userLongitude: Double?
	@AppStorage(StorageKey.userCityName) private var userCityName: String?
	@AppStorage(StorageKey.userDidChooseGPS) private var userDidChooseGPS: Bool = false

	static let shared = LocationManager()

	override private init() {
		super.init()
		self.manager.delegate = self
		self.manager.desiredAccuracy = kCLLocationAccuracyReduced
	}

	func requestAuthorization() {
		manager.requestWhenInUseAuthorization()
	}

	func requestLocation() {
		if userDidChooseGPS {
			manager.requestLocation()
		}
	}

	func stopRequestingLocation() {
		manager.stopUpdatingLocation()
	}

	func startUpdatingHeading() {
		manager.startUpdatingHeading()
	}

	func stopUpdatingHeading() {
		manager.stopUpdatingHeading()
	}

	private func fetchCityName(for location: CLLocation) {
		CLGeocoder().reverseGeocodeLocation(location) { [weak self] placemarks, error in
			if let placemark = placemarks?.last {
				self?.userCityName = placemark.locality
			}
		}
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
		lastLocation = location
		userLatitude = location.coordinate.latitude
		userLongitude = location.coordinate.longitude

		fetchCityName(for: location)
	}

	func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
		print(error.localizedDescription)
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
		self.lastHeading = newHeading
		print(newHeading)
	}
}

extension CLLocationCoordinate2D {
	static let dummy = CLLocationCoordinate2D(latitude: 35.7374,
											  longitude: 51.4057)
}
