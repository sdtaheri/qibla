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
		CLLocationManager.headingAvailable()
	}

    var body: some View {
		Group {
			if self.canAppFunction {
				ScrollView {
					VStack {
						Text("Welcome!")
							.fontWeight(.bold)
							.padding()
						Text("🕋")
							.font(.system(size: 60))

						NavigationLink(destination: LocationTypeView()) {
							Text("Let's find Qibla!")
						}
						.padding(.vertical, -28)
					}
				}
			} else {
				ScrollView {
					VStack {
						Text("Sorry!")
							.fontWeight(.bold)
							.padding()
						Text("This app is intended to only work on \nWatch Series 5.")
							.multilineTextAlignment(.center)

						Text("Your device does not have a Compass.")
							.multilineTextAlignment(.center)
							.padding()
					}
				}
			}
		}
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
