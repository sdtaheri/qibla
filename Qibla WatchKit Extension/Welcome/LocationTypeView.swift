//
//  LocationTypeView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct LocationTypeView: View {
	@Binding var isPresented: Bool
	@Environment(\.presentationMode) private var presentationMode

	var body: some View {
		ScrollView {
			VStack {
				Text("where_are_you")
					.fontWeight(.bold)
					.multilineTextAlignment(.center)
					.padding()

				NavigationLink("use_gps",
							   destination: GPSLocationView(isPresented: $isPresented)
								.environmentObject(LocationManager.shared)
				)

				NavigationLink("choose_manually",
							   destination: CountryListView(isPresented: $isPresented))
			}
		}
		.onAppear {
			if !isPresented {
				presentationMode.wrappedValue.dismiss()
			}
		}
	}
}

struct LocationTypeView_Previews: PreviewProvider {
	static var previews: some View {
		LocationTypeView(isPresented: .constant(true))
	}
}
