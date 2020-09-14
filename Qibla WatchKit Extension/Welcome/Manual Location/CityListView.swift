//
//  CityListView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CityListView: View {
	let country: Country
	let cities: [City]

	@Binding var isPresented: Bool
	@Environment(\.presentationMode) private var presentationMode

	@AppStorage(StorageKey.userLatitude)
	private var userLatitude: Double?

	@AppStorage(StorageKey.userLongitude)
	private var userLongitude: Double?

	@AppStorage(StorageKey.userCityName)
	private var userCityName: String?

	var body: some View {
		List(cities.sorted(by: {
			$0.name.localizedStandardCompare($1.name) == .orderedAscending
		}), id: \.name) { city in
			Button(city.name) {
				userLatitude = city.lat
				userLongitude = city.lng
				userCityName = city.name
				isPresented = false
				presentationMode.wrappedValue.dismiss()
			}
		}
		.navigationTitle(country)
	}
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView(
			country: "Iran",
			cities: [
				City(name: "Tehran", lat: 0, lng: 0),
				City(name: "Damghan", lat: 0, lng: 0)
			],
			isPresented: .constant(true)
		)
    }
}
