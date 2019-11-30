//
//  CompassView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/30/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CompassView: View {

	@ObservedObject private(set) var qiblaCalculator: QiblaCalulator
	@EnvironmentObject private var locationManager: LocationManager

    var body: some View {
		Group {
			if locationManager.lastHeading?.trueHeading != nil
				&& round(locationManager.lastHeading!.trueHeading) == self.qiblaCalculator.direction {
				Text("Bingo!")
			} else {
				Text("Heading: \(locationManager.lastHeading?.description ?? "Nothing yet")")
			}
		}
		.onAppear {
			self.locationManager.startUpdatingHeading()
		}
		.onDisappear {
			self.locationManager.stopUpdatingHeading()
		}
	}
}

struct CompassView_Previews: PreviewProvider {
    static var previews: some View {
		CompassView(qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D(latitude: 35.7374,
																					   longitude: 51.4057)))
			.environmentObject(LocationManager())
    }
}
