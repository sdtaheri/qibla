//
//  QiblaNeedle.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct QiblaNeedle: Shape {
	func path(in frame: CGRect) -> Path {

		var needlePath = Path()

		needlePath.move(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.73810 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.34220 * frame.width, y: frame.minY + 0.73810 * frame.height), control2: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.78073 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.92857 * frame.height), control1: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.88593 * frame.height), control2: CGPoint(x: frame.minX + 0.34220 * frame.width, y: frame.minY + 0.92857 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.65780 * frame.width, y: frame.minY + 0.92857 * frame.height), control2: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.88593 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.72629 * frame.width, y: frame.minY + 0.77518 * frame.height), control1: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.81144 * frame.height), control2: CGPoint(x: frame.minX + 0.76355 * frame.width, y: frame.minY + 0.79127 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.73810 * frame.height), control1: CGPoint(x: frame.minX + 0.67404 * frame.width, y: frame.minY + 0.75262 * frame.height), control2: CGPoint(x: frame.minX + 0.59211 * frame.width, y: frame.minY + 0.73810 * frame.height))
		needlePath.closeSubpath()
		needlePath.move(to: CGPoint(x: frame.minX + 0.65692 * frame.width, y: frame.minY + 0.03191 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.99980 * frame.width, y: frame.minY + 0.30952 * frame.height), control1: CGPoint(x: frame.minX + 0.85749 * frame.width, y: frame.minY + 0.08776 * frame.height), control2: CGPoint(x: frame.minX + 0.99385 * frame.width, y: frame.minY + 0.19089 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.31762 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.30952 * frame.height), control2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.31236 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.38379 * frame.height), control2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.83333 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 1.00000 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.92538 * frame.height), control2: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 1.00000 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.22386 * frame.width, y: frame.minY + 1.00000 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.92538 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.31762 * frame.height), control1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.38379 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.30952 * frame.height), control1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.31236 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.30952 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.09299 * frame.width, y: frame.minY + 0.15174 * frame.height), control1: CGPoint(x: frame.minX + 0.00299 * frame.width, y: frame.minY + 0.25210 * frame.height), control2: CGPoint(x: frame.minX + 0.03648 * frame.width, y: frame.minY + 0.19830 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.15060 * frame.width, y: frame.minY + 0.11145 * frame.height), control1: CGPoint(x: frame.minX + 0.11014 * frame.width, y: frame.minY + 0.13761 * frame.height), control2: CGPoint(x: frame.minX + 0.12941 * frame.width, y: frame.minY + 0.12415 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.19787 * frame.width, y: frame.minY + 0.08593 * frame.height), control1: CGPoint(x: frame.minX + 0.16544 * frame.width, y: frame.minY + 0.10256 * frame.height), control2: CGPoint(x: frame.minX + 0.18122 * frame.width, y: frame.minY + 0.09404 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.28188 * frame.width, y: frame.minY + 0.05111 * frame.height), control1: CGPoint(x: frame.minX + 0.22385 * frame.width, y: frame.minY + 0.07328 * frame.height), control2: CGPoint(x: frame.minX + 0.25195 * frame.width, y: frame.minY + 0.06163 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.50001 * frame.width, y: frame.minY + 0.00000 * frame.height), control1: CGPoint(x: frame.minX + 0.34686 * frame.width, y: frame.minY + 0.02828 * frame.height), control2: CGPoint(x: frame.minX + 0.42051 * frame.width, y: frame.minY + 0.01079 * frame.height))
		needlePath.addCurve(to: CGPoint(x: frame.minX + 0.65692 * frame.width, y: frame.minY + 0.03191 * frame.height), control1: CGPoint(x: frame.minX + 0.55548 * frame.width, y: frame.minY + 0.00753 * frame.height), control2: CGPoint(x: frame.minX + 0.60810 * frame.width, y: frame.minY + 0.01832 * frame.height))
		needlePath.closeSubpath()

		return needlePath

	}
}

struct QiblaNeedle_Previews: PreviewProvider {
    static var previews: some View {
		GeometryReader { proxy in
			QiblaNeedle()
				.frame(width: proxy.size.height / 3.0,
					   height: proxy.size.height)
		}
    }
}
