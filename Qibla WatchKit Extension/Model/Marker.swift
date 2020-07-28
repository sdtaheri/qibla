//
//  Marker.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct Marker: Hashable {
	let angle: Angle

	static func generate() -> [Marker] {
		let count = 36
		return (0..<count).map {
			let angle = Angle.degrees(Double($0) * 360.0 / Double(count))
			return Marker(angle: angle)
		}
	}
}
