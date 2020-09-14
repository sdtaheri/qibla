//
//  WelcomeView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
	@Binding var isPresented: Bool
	@State private var shouldNavigateToNextScreen: Bool = false

	@State private var shouldSpin = false

	private var canAppFunction: Bool {
		#if targetEnvironment(simulator)
		return true
		#else
		return CLLocationManager.headingAvailable()
		#endif
	}

	var body: some View {
		if canAppFunction {
			ScrollView {
				VStack {
					Text("welcome")
						.fontWeight(.bold)
					ZStack {
						Circle()
							.stroke(style: StrokeStyle(
								lineWidth: 5,
								lineCap: .butt,
								lineJoin: .miter,
								miterLimit: 10,
								dash: [1, 5],
								dashPhase: shouldSpin ? 0 : 120
							))
							.frame(width: 100, height: 100)
							.rotation3DEffect(
								.degrees(100),
								axis: (x: -1, y: 0, z: 0)
							)
							.offset(x: 0, y: 25)
							.animation(Animation
										.linear(duration: 5)
										.repeatForever(autoreverses: false)
							)
							.onAppear {
								shouldSpin = true
							}
							.onDisappear {
								shouldSpin = false
							}

						Image("kaaba")
					}
				}

				NavigationLink("lets_find_qibla",
							   destination: LocationTypeView(isPresented: $isPresented))
			}
		} else {
			ScrollView {
				VStack(spacing: 16) {
					Text("sorry")
						.fontWeight(.bold)
					Text("works_only_on_series_5")
					Text("no_compass_available")
				}
				.multilineTextAlignment(.center)
			}
		}
	}
}

struct WelcomeView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			WelcomeView(isPresented: .constant(true))
				.previewDevice("Apple Watch Series 5 - 40mm")
			WelcomeView(isPresented: .constant(true))
				.previewDevice("Apple Watch Series 5 - 44mm")
		}
	}
}
