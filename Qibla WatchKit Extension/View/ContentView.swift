//
//  ContentView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 10/26/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct ContentView: View {

	@ObservedObject private var settings = UserSettings()

    var body: some View {
		Group {
			if settings.didShowWelcomeScreen && settings.userCoordinate != nil {
				CompassView(qiblaCalculator: QiblaCalulator(coordinate: settings.userCoordinate!))
					.environmentObject(LocationManager())
			} else {
				WelcomeView()
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(UserSettings())
    }
}
