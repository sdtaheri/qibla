//
//  QiblaCalculator.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/30/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import Foundation
import CoreLocation

class QiblaCalulator: ObservableObject {

	private let desiredCoordinate: CLLocationCoordinate2D
	private let meccaCoordinate = CLLocationCoordinate2D(latitude: 21.422504,
														 longitude: 39.826195)

	@Published private(set) var direction: CLLocationDegrees = .zero

	init(coordinate: CLLocationCoordinate2D) {
		self.desiredCoordinate = coordinate
		self.direction = qiblaDirection()
	}

	private func qiblaDirection() -> CLLocationDegrees {
		let delta = (meccaCoordinate.longitude - desiredCoordinate.longitude).radian

		let y = sin(delta) * cos(meccaCoordinate.latitude.radian)
		let x = cos(desiredCoordinate.latitude.radian) * sin(meccaCoordinate.latitude.radian) - sin(desiredCoordinate.latitude.radian) * cos(meccaCoordinate.latitude.radian) * cos(delta)
		var radiansBearing = atan2(y, x)
		if radiansBearing < 0.0 {
			radiansBearing += 2 * .pi
		}
		return round(radiansBearing * 180 / .pi)
	}
}

extension CLLocationDegrees {
	var radian: Double {
		self * .pi / 180
	}
}
