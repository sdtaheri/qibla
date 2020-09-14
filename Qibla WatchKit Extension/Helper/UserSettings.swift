//
//  UserSettings.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 9/13/20.
//

import Combine
import SwiftUI

enum StorageKey {
	static let userLatitude = "userLatitude"
	static let userLongitude = "userLongitude"
	static let userCityName = "userCityName"
	static let userDidChooseGPS = "userDidChooseGPS"
	static let userDidChooseCity = "userDidChooseCity"
	static let shouldShowWelcomeScreen = "shouldShowWelcomeScreen"
}
