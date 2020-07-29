//
//  WelcomeView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {

	private var canAppFunction: Bool {
		#if targetEnvironment(simulator)
		return true
		#else
		return CLLocationManager.headingAvailable()
		#endif
	}

	@ViewBuilder
    var body: some View {
		if self.canAppFunction {
			ScrollView {
				VStack {
					Text("Welcome!")
						.fontWeight(.bold)
					Text("🕋")
						.font(.system(size: 60))
					NavigationLink(destination: LocationTypeView()) {
						Text("Let's find Qibla!")
					}
				}
				.padding()
			}
		} else {
			ScrollView {
				VStack(spacing: 16) {
					Text("Sorry!")
						.fontWeight(.bold)
					Text("This app is intended to only work on \nWatch Series 5.")

					Text("Your device does not have a Compass.")
				}
				.multilineTextAlignment(.center)
			}
		}
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			WelcomeView()
				.previewDevice("Apple Watch Series 5 - 40mm")
			WelcomeView()
				.previewDevice("Apple Watch Series 5 - 44mm")
		}
    }
}
