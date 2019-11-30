//
//  WelcomeView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {

    var body: some View {
		ScrollView {
			VStack {
				Text("Welcome!")
					.fontWeight(.bold)
					.padding()
				Text("This app is intended to work only on \nWatch Series 5.")
					.multilineTextAlignment(.center)
				NavigationLink(destination: LocationTypeView()) {
						Text("I'm good!")
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
