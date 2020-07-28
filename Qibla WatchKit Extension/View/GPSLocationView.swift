//
//  GPSLocationView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/30/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct GPSLocationView: View {
	@EnvironmentObject private var locationManager: LocationManager

    var body: some View {
		Group {
			if locationManager.authorization == .authorizedAlways ||
				locationManager.authorization == .authorizedWhenInUse {
				if locationManager.lastLocation != nil {
					CompassView(qiblaCalculator: QiblaCalulator(coordinate: locationManager.lastLocation!.coordinate))
				} else {
					Text("It's authorized: Nothing for now")
				}
			} else if locationManager.authorization == .denied {
				Text("It's denied")
			} else if locationManager.authorization == .restricted {
				Text("It's restricted")
			} else if locationManager.authorization == .notDetermined {
				EmptyView()
			} else {
				EmptyView()
			}
		}.onAppear {
			switch self.locationManager.authorization {
			case .authorizedAlways, .authorizedWhenInUse:
				self.locationManager.requestLocation()
			case .notDetermined:
				self.locationManager.requestAuthorization()
			default:
				break
			}
		}
    }
}

struct GPSLocationView_Previews: PreviewProvider {
    static var previews: some View {
		GPSLocationView()
			.environmentObject(LocationManager())
    }
}
