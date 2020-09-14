//
//  GPSLocationView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/30/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct GPSLocationView: View {
	@Binding var isPresented: Bool
	@Environment(\.presentationMode) private var presentationMode

	@EnvironmentObject private var locationManager: LocationManager

	@AppStorage(StorageKey.userDidChooseGPS)
	private var userDidChooseGPS: Bool = false

    var body: some View {
		Group {
			if locationManager.authorization == .authorizedAlways ||
				locationManager.authorization == .authorizedWhenInUse ||
				locationManager.authorization == .notDetermined {
				Text("please_wait")
			} else if locationManager.authorization == .denied {
				ScrollView {
					VStack(spacing: 8) {
						Label("location_permission_denied", systemImage: "location.slash")
							.font(.headline)
						Text("location_permission_denied_description")
					}
				}
			} else if locationManager.authorization == .restricted {
				ScrollView {
					VStack(spacing: 8) {
						Label("location_permission_restricted", systemImage: "location.slash.fill")
							.font(.headline)
						Text("plase_start_over")
					}
				}
			} else {
				Text("plase_start_over")
			}
		}
		.multilineTextAlignment(.center)
		.onAppear {
			userDidChooseGPS = true

			switch locationManager.authorization {
			case .notDetermined:
				locationManager.requestAuthorization()
			default:
				DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
					locationManager.requestLocation()
				}
			}
		}
		.onReceive(locationManager.$lastLocation) { value in
			if value != nil {
				isPresented = false
				presentationMode.wrappedValue.dismiss()
			}
		}
    }
}

struct GPSLocationView_Previews: PreviewProvider {
    static var previews: some View {
		GPSLocationView(isPresented: .constant(true))
			.environmentObject(LocationManager.shared)
    }
}
