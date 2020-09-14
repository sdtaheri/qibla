//
//  Arabesque.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct Arabesque: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()

		path.move(to: CGPoint(x: rect.minX + 0.49460 * rect.width, y: rect.minY + rect.height))
		path.addCurve(to: CGPoint(x: rect.minX, y: rect.minY),
					  control1: CGPoint(x: rect.minX + 0.49460 * rect.width, y: rect.minY + 0.61413 * rect.height),
					  control2: CGPoint(x: rect.minX + 0.31353 * rect.width, y: rect.minY + 0.24803 * rect.height))
		path.move(to: CGPoint(x: rect.minX + 0.50540 * rect.width, y: rect.minY + rect.height))
		path.addCurve(to: CGPoint(x: rect.minX + rect.width, y: rect.minY),
					  control1: CGPoint(x: rect.minX + 0.50540 * rect.width, y: rect.minY + 0.61413 * rect.height),
					  control2: CGPoint(x: rect.minX + 0.68647 * rect.width, y: rect.minY + 0.24803 * rect.height))

		return path
	}
}

struct Arabesque_Previews: PreviewProvider {
    static var previews: some View {
        Arabesque()
			.stroke(style: StrokeStyle(lineWidth: 1.0, lineCap: .round))
    }
}
