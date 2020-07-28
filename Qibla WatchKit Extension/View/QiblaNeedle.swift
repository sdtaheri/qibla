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

		var bezierPath = Path()

		bezierPath.move(to: CGPoint(x: frame.minX + 0.51589 * frame.width, y: frame.minY + 0.38220 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.73328 * frame.width, y: frame.minY + 0.40700 * frame.height), control1: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.38219 * frame.height), control2: CGPoint(x: frame.minX + 0.73328 * frame.width, y: frame.minY + 0.40700 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.42996 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.29833 * frame.width, y: frame.minY + 0.40700 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.38219 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51589 * frame.width, y: frame.minY + 0.38220 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.37292 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50552 * frame.width, y: frame.minY + 0.37409 * frame.height), control1: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.37292 * frame.height), control2: CGPoint(x: frame.minX + 0.51211 * frame.width, y: frame.minY + 0.37334 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.21444 * frame.width, y: frame.minY + 0.40729 * frame.height), control1: CGPoint(x: frame.minX + 0.45348 * frame.width, y: frame.minY + 0.38003 * frame.height), control2: CGPoint(x: frame.minX + 0.22138 * frame.width, y: frame.minY + 0.40650 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.21448 * frame.width, y: frame.minY + 0.44554 * frame.height), control1: CGPoint(x: frame.minX + 0.21448 * frame.width, y: frame.minY + 0.40733 * frame.height), control2: CGPoint(x: frame.minX + 0.21448 * frame.width, y: frame.minY + 0.44554 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.47739 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.81713 * frame.width, y: frame.minY + 0.44554 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.81713 * frame.width, y: frame.minY + 0.40733 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.37292 * frame.height), control1: CGPoint(x: frame.minX + 0.80977 * frame.width, y: frame.minY + 0.40645 * frame.height), control2: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.37292 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.23296 * frame.width, y: frame.minY + 0.47073 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.28182 * frame.width, y: frame.minY + 0.49271 * frame.height), control1: CGPoint(x: frame.minX + 0.24193 * frame.width, y: frame.minY + 0.48170 * frame.height), control2: CGPoint(x: frame.minX + 0.25977 * frame.width, y: frame.minY + 0.49026 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.33933 * frame.width, y: frame.minY + 0.48197 * frame.height), control1: CGPoint(x: frame.minX + 0.30433 * frame.width, y: frame.minY + 0.49520 * frame.height), control2: CGPoint(x: frame.minX + 0.32563 * frame.width, y: frame.minY + 0.49074 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.23296 * frame.width, y: frame.minY + 0.47073 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.79866 * frame.width, y: frame.minY + 0.47073 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.69229 * frame.width, y: frame.minY + 0.48197 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.74977 * frame.width, y: frame.minY + 0.49271 * frame.height), control1: CGPoint(x: frame.minX + 0.70598 * frame.width, y: frame.minY + 0.49074 * frame.height), control2: CGPoint(x: frame.minX + 0.72731 * frame.width, y: frame.minY + 0.49520 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.79866 * frame.width, y: frame.minY + 0.47073 * frame.height), control1: CGPoint(x: frame.minX + 0.77183 * frame.width, y: frame.minY + 0.49026 * frame.height), control2: CGPoint(x: frame.minX + 0.78967 * frame.width, y: frame.minY + 0.48170 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.36216 * frame.width, y: frame.minY + 0.48438 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.41153 * frame.width, y: frame.minY + 0.50694 * frame.height), control1: CGPoint(x: frame.minX + 0.37099 * frame.width, y: frame.minY + 0.49563 * frame.height), control2: CGPoint(x: frame.minX + 0.38908 * frame.width, y: frame.minY + 0.50445 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.46971 * frame.width, y: frame.minY + 0.49575 * frame.height), control1: CGPoint(x: frame.minX + 0.43437 * frame.width, y: frame.minY + 0.50947 * frame.height), control2: CGPoint(x: frame.minX + 0.45604 * frame.width, y: frame.minY + 0.50481 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36216 * frame.width, y: frame.minY + 0.48438 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.66945 * frame.width, y: frame.minY + 0.48438 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.56190 * frame.width, y: frame.minY + 0.49575 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.62011 * frame.width, y: frame.minY + 0.50694 * frame.height), control1: CGPoint(x: frame.minX + 0.57559 * frame.width, y: frame.minY + 0.50481 * frame.height), control2: CGPoint(x: frame.minX + 0.59723 * frame.width, y: frame.minY + 0.50947 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.66945 * frame.width, y: frame.minY + 0.48438 * frame.height), control1: CGPoint(x: frame.minX + 0.64255 * frame.width, y: frame.minY + 0.50445 * frame.height), control2: CGPoint(x: frame.minX + 0.66062 * frame.width, y: frame.minY + 0.49563 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.81714 * frame.width, y: frame.minY + 0.46878 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.80716 * frame.width, y: frame.minY + 0.46983 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.75113 * frame.width, y: frame.minY + 0.51131 * frame.height), control1: CGPoint(x: frame.minX + 0.80969 * frame.width, y: frame.minY + 0.48923 * frame.height), control2: CGPoint(x: frame.minX + 0.78538 * frame.width, y: frame.minY + 0.50751 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.67815 * frame.width, y: frame.minY + 0.48347 * frame.height), control1: CGPoint(x: frame.minX + 0.71648 * frame.width, y: frame.minY + 0.51516 * frame.height), control2: CGPoint(x: frame.minX + 0.68444 * frame.width, y: frame.minY + 0.50277 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.62147 * frame.width, y: frame.minY + 0.52554 * frame.height), control1: CGPoint(x: frame.minX + 0.68047 * frame.width, y: frame.minY + 0.50314 * frame.height), control2: CGPoint(x: frame.minX + 0.65601 * frame.width, y: frame.minY + 0.52170 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.54833 * frame.width, y: frame.minY + 0.49718 * frame.height), control1: CGPoint(x: frame.minX + 0.58650 * frame.width, y: frame.minY + 0.52942 * frame.height), control2: CGPoint(x: frame.minX + 0.55422 * frame.width, y: frame.minY + 0.51677 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51581 * frame.width, y: frame.minY + 0.50062 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48331 * frame.width, y: frame.minY + 0.49718 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.41017 * frame.width, y: frame.minY + 0.52554 * frame.height), control1: CGPoint(x: frame.minX + 0.47742 * frame.width, y: frame.minY + 0.51677 * frame.height), control2: CGPoint(x: frame.minX + 0.44512 * frame.width, y: frame.minY + 0.52942 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.35420 * frame.width, y: frame.minY + 0.48354 * frame.height), control1: CGPoint(x: frame.minX + 0.37559 * frame.width, y: frame.minY + 0.52170 * frame.height), control2: CGPoint(x: frame.minX + 0.35113 * frame.width, y: frame.minY + 0.50314 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.28047 * frame.width, y: frame.minY + 0.51131 * frame.height), control1: CGPoint(x: frame.minX + 0.34717 * frame.width, y: frame.minY + 0.50276 * frame.height), control2: CGPoint(x: frame.minX + 0.31512 * frame.width, y: frame.minY + 0.51515 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.22448 * frame.width, y: frame.minY + 0.46983 * frame.height), control1: CGPoint(x: frame.minX + 0.24625 * frame.width, y: frame.minY + 0.50751 * frame.height), control2: CGPoint(x: frame.minX + 0.22194 * frame.width, y: frame.minY + 0.48923 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.21449 * frame.width, y: frame.minY + 0.46878 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.21449 * frame.width, y: frame.minY + 0.53958 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51582 * frame.width, y: frame.minY + 0.57143 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.81714 * frame.width, y: frame.minY + 0.53958 * frame.height))
		bezierPath.addLine(to: CGPoint(x: frame.minX + 0.81714 * frame.width, y: frame.minY + 0.46878 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.73810 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.34220 * frame.width, y: frame.minY + 0.73810 * frame.height), control2: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.78073 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.92857 * frame.height), control1: CGPoint(x: frame.minX + 0.21429 * frame.width, y: frame.minY + 0.88593 * frame.height), control2: CGPoint(x: frame.minX + 0.34220 * frame.width, y: frame.minY + 0.92857 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.65780 * frame.width, y: frame.minY + 0.92857 * frame.height), control2: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.88593 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.72629 * frame.width, y: frame.minY + 0.77518 * frame.height), control1: CGPoint(x: frame.minX + 0.78571 * frame.width, y: frame.minY + 0.81144 * frame.height), control2: CGPoint(x: frame.minX + 0.76355 * frame.width, y: frame.minY + 0.79127 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.73810 * frame.height), control1: CGPoint(x: frame.minX + 0.67404 * frame.width, y: frame.minY + 0.75262 * frame.height), control2: CGPoint(x: frame.minX + 0.59211 * frame.width, y: frame.minY + 0.73810 * frame.height))
		bezierPath.closeSubpath()
		bezierPath.move(to: CGPoint(x: frame.minX + 0.65692 * frame.width, y: frame.minY + 0.03191 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.99980 * frame.width, y: frame.minY + 0.30952 * frame.height), control1: CGPoint(x: frame.minX + 0.85749 * frame.width, y: frame.minY + 0.08776 * frame.height), control2: CGPoint(x: frame.minX + 0.99385 * frame.width, y: frame.minY + 0.19089 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.31762 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.30952 * frame.height), control2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.31236 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.38379 * frame.height), control2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.83333 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 1.00000 * frame.height), control1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.92538 * frame.height), control2: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 1.00000 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control1: CGPoint(x: frame.minX + 0.22386 * frame.width, y: frame.minY + 1.00000 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.92538 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.31762 * frame.height), control1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.83333 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.38379 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.30952 * frame.height), control1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.31236 * frame.height), control2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.30952 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.09299 * frame.width, y: frame.minY + 0.15174 * frame.height), control1: CGPoint(x: frame.minX + 0.00299 * frame.width, y: frame.minY + 0.25210 * frame.height), control2: CGPoint(x: frame.minX + 0.03648 * frame.width, y: frame.minY + 0.19830 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.15060 * frame.width, y: frame.minY + 0.11145 * frame.height), control1: CGPoint(x: frame.minX + 0.11014 * frame.width, y: frame.minY + 0.13761 * frame.height), control2: CGPoint(x: frame.minX + 0.12941 * frame.width, y: frame.minY + 0.12415 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.19787 * frame.width, y: frame.minY + 0.08593 * frame.height), control1: CGPoint(x: frame.minX + 0.16544 * frame.width, y: frame.minY + 0.10256 * frame.height), control2: CGPoint(x: frame.minX + 0.18122 * frame.width, y: frame.minY + 0.09404 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.28188 * frame.width, y: frame.minY + 0.05111 * frame.height), control1: CGPoint(x: frame.minX + 0.22385 * frame.width, y: frame.minY + 0.07328 * frame.height), control2: CGPoint(x: frame.minX + 0.25195 * frame.width, y: frame.minY + 0.06163 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50001 * frame.width, y: frame.minY + 0.00000 * frame.height), control1: CGPoint(x: frame.minX + 0.34686 * frame.width, y: frame.minY + 0.02828 * frame.height), control2: CGPoint(x: frame.minX + 0.42051 * frame.width, y: frame.minY + 0.01079 * frame.height))
		bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.65692 * frame.width, y: frame.minY + 0.03191 * frame.height), control1: CGPoint(x: frame.minX + 0.55548 * frame.width, y: frame.minY + 0.00753 * frame.height), control2: CGPoint(x: frame.minX + 0.60810 * frame.width, y: frame.minY + 0.01832 * frame.height))
		bezierPath.closeSubpath()

		return bezierPath

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
