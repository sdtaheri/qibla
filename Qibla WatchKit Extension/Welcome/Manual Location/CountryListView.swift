//
//  CountryListView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CountryListView: View {
	@State private var cities = Cities()

	@Binding var isPresented: Bool
	@Environment(\.presentationMode) private var presentationMode

	@AppStorage(StorageKey.userDidChooseCity)
	private var userDidChooseCity: Bool = false

    var body: some View {
		List(cities.keys.sorted(), id: \.self) { item in
			NavigationLink(
				destination: CityListView(
					country: item,
					cities: cities[item] ?? [],
					isPresented: $isPresented
				),
				label: {
					VStack(alignment: .leading) {
						Text(item)
						Text("cities_count \((cities[item] ?? []).count)")
							.foregroundColor(.secondary)
					}
				}
			)
		}
		.navigationTitle("countries")
		.onAppear {
			userDidChooseCity = true

			if !isPresented {
				presentationMode.wrappedValue.dismiss()
				return
			}

			City.loadAllCities { result in
				switch result {
				case .success(let cities):
					self.cities = cities
				case .failure:
					self.cities = [:]
				}
			}
		}
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
		CountryListView(isPresented: .constant(true))
    }
}
