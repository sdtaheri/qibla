//
//  CountryListView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CountryListView: View {
	private let countries: [String] = NSLocale.isoCountryCodes.map {
		let id = Locale.identifier(fromComponents: [NSLocale.Key.countryCode.rawValue: $0])
		return (Locale.autoupdatingCurrent as NSLocale).displayName(forKey: NSLocale.Key.identifier,
																	value: id) ?? "---"
	}.sorted { $0.localizedStandardCompare($1) == .orderedAscending }

    var body: some View {
		List(countries, id: \.self) {
			Text($0)
		}
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
