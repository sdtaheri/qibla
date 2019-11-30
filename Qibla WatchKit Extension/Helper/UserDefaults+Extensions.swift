//
//  UserDefaults+Extensions.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/29/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import Foundation
import CoreLocation
import Combine

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T

    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
			let output = UserDefaults.standard.object(forKey: key)
			if key == "userCoordinate" {
				if let desc = output as? String {
					let comps = desc.components(separatedBy: ",")
					if comps.count == 2 {
						return CLLocationCoordinate2D(latitude: CLLocationDegrees(comps[0])!,
													  longitude: CLLocationDegrees(comps[1])!) as! T
					}
				}

				return defaultValue
			}

			return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
			if let value = newValue as? CLLocationCoordinate2D {
				UserDefaults.standard.set("\(value.latitude),\(value.longitude)", forKey: key)
			} else {
				UserDefaults.standard.set(newValue, forKey: key)
			}
        }
    }
}


final class UserSettings: ObservableObject {

    let objectWillChange = PassthroughSubject<Void, Never>()

    @UserDefault("didShowWelcomeScreen", defaultValue: false)
    var didShowWelcomeScreen: Bool {
        willSet {
            objectWillChange.send()
        }
    }

	@UserDefault("userCoordinate", defaultValue: nil)
	var userCoordinate: CLLocationCoordinate2D? {
		willSet {
			objectWillChange.send()
		}
	}
}
