//
//  CompassMarkerView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CompassMarkerView: View {
	let marker: Marker
	let markerHeight: CGFloat
	let lineWidth: CGFloat

	var body: some View {
		VStack(spacing: 4) {
			Capsule()
				.frame(width: 1.5, height: markerHeight)
			Circle()
				.frame(width: lineWidth * 2, height: lineWidth * 2)
			Arabesque()
				.stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
				.frame(width: markerHeight / 1.2, height: markerHeight / 1.2)
			Spacer()
		}
		.rotationEffect(marker.angle)
	}
}

struct CompassMarkerView_Previews: PreviewProvider {
    static var previews: some View {
		CompassMarkerView(marker: Marker(angle: .degrees(0)),
						  markerHeight: 30,
						  lineWidth: 1)
    }
}
