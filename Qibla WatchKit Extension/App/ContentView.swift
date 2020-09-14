//
//  ContentView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 9/13/20.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject
	private var locationManager: LocationManager

	@AppStorage(StorageKey.userLatitude)
	private var userLatitude: Double?

	@AppStorage(StorageKey.userLongitude)
	private var userLongitude: Double?

	@AppStorage(StorageKey.userCityName)
	private var userCityName: String?

	@AppStorage(StorageKey.shouldShowWelcomeScreen)
	private var shouldShowWelcomeScreen: Bool = true

	@AppStorage(StorageKey.userDidChooseGPS)
	private var userDidChooseGPS: Bool = false

	@AppStorage(StorageKey.userDidChooseCity)
	private var userDidChooseCity: Bool = false

	var body: some View {
		if !shouldShowWelcomeScreen {
			GeometryReader { proxy in
				ScrollView {
					VStack(spacing: 12) {
						if let latitude = userLatitude, let longitude = userLongitude {
							CompassView(
								qiblaCalculator: QiblaCalulator(
									coordinate: CLLocationCoordinate2D(latitude: latitude,
																	   longitude: longitude))
							)
							.frame(width: proxy.size.width * 0.95, height: proxy.size.height * 0.95)
							.padding(.bottom)

							userCityName.map {
								Text($0)
							}
						}

						Button("setup_again") {
							locationManager.stopUpdatingHeading()
							locationManager.stopRequestingLocation()

							resetDefaults()
						}
						.foregroundColor(.accentColor)
					}
					.transition(.scale)
					.animation(.default)
				}
			}
			.onAppear {
				locationManager.startUpdatingHeading()
				if userDidChooseGPS {
					locationManager.requestLocation()
				}
			}
			.onDisappear {
				locationManager.stopUpdatingHeading()
				locationManager.stopRequestingLocation()
			}
			.navigationTitle("qibla")
		} else {
			WelcomeView(isPresented: $shouldShowWelcomeScreen)
				.onAppear {
					shouldShowWelcomeScreen = true
				}
				.navigationTitle("")
		}
	}

	private func resetDefaults() {
		userLatitude = nil
		userLongitude = nil
		userCityName = nil

		userDidChooseGPS = false
		userDidChooseCity = false

		shouldShowWelcomeScreen = true
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environmentObject(LocationManager.shared)
	}
}
