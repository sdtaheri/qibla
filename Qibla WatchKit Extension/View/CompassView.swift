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
	private let lineWidth: CGFloat = 1.5

    var body: some View {
		GeometryReader { proxy in
			ZStack {
				self.makeArabesqueCircle(with: proxy)
				self.makeQiblaNeedle(with: proxy)
				self.makeNorthNeedle(with: proxy)
			}
		}
		.rotationEffect(.degrees((locationManager.lastHeading?.trueHeading ?? 0) * -1.0))
		.onAppear {
			self.locationManager.startUpdatingHeading()
		}
		.onDisappear {
			self.locationManager.stopUpdatingHeading()
		}
	}

	@ViewBuilder
	private func makeArabesqueCircle(with proxy: GeometryProxy) -> some View {
		Circle()
			.stroke(lineWidth: lineWidth)
			.foregroundColor(.gray)
			.padding(4)
		ForEach(markers, id: \.self) { marker in
			CompassMarkerView(marker: marker,
							  markerHeight: proxy.size.width / 16.0,
							  lineWidth: lineWidth)
				.padding(.vertical, 12)
				.frame(width: min(proxy.size.width, proxy.size.height),
					   height: min(proxy.size.width, proxy.size.height))
		}
		Circle()
			.stroke(lineWidth: lineWidth)
			.foregroundColor(.gray)
			.frame(width: 0.666 * min(proxy.size.width, proxy.size.height) - 4 * lineWidth - 36,
				   height: 0.666 * min(proxy.size.width, proxy.size.height) - 4 * lineWidth - 36)
	}

	private func makeQiblaNeedle(with proxy: GeometryProxy) -> some View {
		QiblaNeedle()
			.frame(width: proxy.size.width / 2.2 * (1.0 / 3.0),
				   height: proxy.size.width / 2.2)
			.offset(x: 0, y: -proxy.size.width / 6.5)
			.foregroundColor(Color.green)
			.shadow(radius: 1)
			.rotationEffect(.degrees(qiblaCalculator.direction))
	}

	@ViewBuilder
	private func makeNorthNeedle(with proxy: GeometryProxy) -> some View {
		Text("N")
			.padding(6)
			.background(Color.black)
			.offset(x: 0, y: -min(proxy.size.width, proxy.size.height) / 2.0)

		Triangle()
			.foregroundColor(Color.red)
			.frame(width: proxy.size.width / 18, height: proxy.size.width / 2.2)
			.cornerRadius(proxy.size.width / 36)
			.offset(x: 0, y: -proxy.size.width / 5.0)
			.shadow(radius: 2)

		Circle()
			.frame(width: proxy.size.width / 50, height: proxy.size.width / 50)
			.foregroundColor(Color.white)
	}
}

@available(watchOSApplicationExtension 7.0, *)
struct CompassView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			Group {
				NavigationView {
					CompassView(
						qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D(latitude: 35.7374,
																						   longitude: 51.4057))
					)
				}
				.environmentObject(LocationManager())
				NavigationView {
					CompassView(
						qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D(latitude: 35.7374,
																						   longitude: 51.4057))
					)
				}
				.environmentObject(LocationManager())
			}
			Group {
				NavigationView {
					CompassView(
						qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D(latitude: 35.7374,
																						   longitude: 51.4057))
					)
				}
				.environmentObject(LocationManager())
				NavigationView {
					CompassView(
						qiblaCalculator: QiblaCalulator(coordinate: CLLocationCoordinate2D(latitude: 35.7374,
																						   longitude: 51.4057))
					)
				}
				.environmentObject(LocationManager())
			}
		}
    }
}
