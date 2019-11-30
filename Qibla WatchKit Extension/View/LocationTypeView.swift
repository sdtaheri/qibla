//
//  LocationTypeView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct LocationTypeView: View {

    var body: some View {
		ScrollView {
			VStack {
				Text("Which city are you in?")
					.fontWeight(.bold)
					.multilineTextAlignment(.center)
					.padding()

				NavigationLink(destination: GPSLocationView().environmentObject(LocationManager())) {
					Text("Use GPS")
				}

				NavigationLink(destination: CountryListView()) {
					Text("Choose Manually")
				}
			}
		}
    }
}

struct LocationTypeView_Previews: PreviewProvider {
    static var previews: some View {
		LocationTypeView()
    }
}
