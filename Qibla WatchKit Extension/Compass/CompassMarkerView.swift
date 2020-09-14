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
		VStack(spacing: 2) {
			Capsule()
				.fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .bottom))
				.frame(width: lineWidth, height: markerHeight * 0.8)
			Circle()
				.frame(width: lineWidth, height: lineWidth)
				.foregroundColor(.blue)
			Arabesque()
				.stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
				.frame(width: markerHeight, height: markerHeight)
				.rotationEffect(.degrees(180))
				.foregroundColor(.blue)
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
