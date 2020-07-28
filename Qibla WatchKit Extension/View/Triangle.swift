//
//  Triangle.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct Triangle: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()

		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
		path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
		path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

		return path
	}
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        Triangle()
    }
}
