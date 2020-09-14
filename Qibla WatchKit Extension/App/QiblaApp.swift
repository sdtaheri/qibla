//
//  QiblaApp.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 9/13/20.
//

import SwiftUI

@main
struct QiblaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
					.environmentObject(LocationManager.shared)
            }
        }
    }
}
