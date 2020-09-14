//
//  CompassView.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 11/30/19.
//  Copyright © 2019 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct CompassView: View {
	@ObservedObject private(set) var qiblaCalculator: QiblaCalulator
	@EnvironmentObject private var locationManager: LocationManager

	private let markers = Marker.generate()
	private let lineWidth: CGFloat = 1.2

	var body: some View {
		GeometryReader { proxy in
			VStack {
				ZStack {
					makeArabesqueCircle(with: proxy)
					makeQiblaNeedle(with: proxy)
					makeNorthNeedle(with: proxy)
				}
				.padding(.top)
				.rotationEffect(.degrees((locationManager.lastHeading?.trueHeading ?? 0) * -1.0))
			}
		}
	}

	@ViewBuilder
	private func makeArabesqueCircle(with proxy: GeometryProxy) -> some View {
		Circle()
			.stroke(Color.white,
				style: StrokeStyle(
					lineWidth: lineWidth / 2.0,
					lineCap: .butt,
					lineJoin: .miter,
					miterLimit: 0,
					dash: [],
					dashPhase: 0
				)
			)
			.padding(4)
		ForEach(markers, id: \.self) { marker in
			CompassMarkerView(marker: marker,
							  markerHeight: proxy.size.width / 16.0,
							  lineWidth: lineWidth)
				.padding(.vertical, 10)
				.frame(width: min(proxy.size.width, proxy.size.height),
					   height: min(proxy.size.width, proxy.size.height))
		}
	}

	private func makeQiblaNeedle(with proxy: GeometryProxy) -> some View {
		ZStack {
			QiblaNeedle()
				.frame(width: proxy.size.width / 2.05 * (1.0 / 3.0),
					   height: proxy.size.width / 2.05)
				.offset(x: 0, y: -proxy.size.width / 6.1)
				.foregroundColor(Color.accentColor)
				.shadow(color: Color.white.opacity(0.5), radius: 2)

			Kaaba()
				.foregroundColor(.black)
				.frame(width: proxy.size.width / 3.0 * (1.0 / 3.0),
					   height: proxy.size.width / 3.0 * (1.0 / 3.0))
				.offset(x: 0, y: -proxy.size.width / 5.5)

			Text("\(Int(qiblaCalculator.direction))")
				.font(.footnote)
				.offset(x: 0, y: -proxy.size.width / 2.1)

		}
		.rotationEffect(.degrees(qiblaCalculator.direction))
	}

	@ViewBuilder
	private func makeNorthNeedle(with proxy: GeometryProxy) -> some View {
		Text("N")
			.padding()
			.background(Color.black)
			.clipShape(Circle())
			.offset(x: 0, y: -min(proxy.size.width, proxy.size.height) / 2.0)

		Triangle()
			.foregroundColor(Color.red)
			.frame(width: proxy.size.width / 18, height: proxy.size.width / 2.2)
			.cornerRadius(proxy.size.width / 36)
			.offset(x: 0, y: -proxy.size.width / 5.1)
			.shadow(color: Color.white.opacity(0.5), radius: 3)

		Circle()
			.frame(width: proxy.size.width / 50, height: proxy.size.width / 50)
			.foregroundColor(Color.white)
	}
}

struct CompassView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			CompassView(
				qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D.dummy)
			)
			.previewDevice("Apple Watch Series 5 - 44mm")
			CompassView(
				qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D.dummy)
			)
			.previewDevice("Apple Watch Series 5 - 40mm")
		}
		.environmentObject(LocationManager.shared)
	}
}
