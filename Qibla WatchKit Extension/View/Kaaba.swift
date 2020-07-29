//
//  Kaaba.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 7/29/20.
//  Copyright © 2020 Saeed Taheri. All rights reserved.
//

import SwiftUI

struct Kaaba: Shape {

	func path(in frame: CGRect) -> Path {
		var kaabaPath = Path()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.17326 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.00033 * frame.width, y: frame.minY + 0.17337 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.00033 * frame.width, y: frame.minY + 0.36584 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50002 * frame.width, y: frame.minY + 0.52626 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.99970 * frame.width, y: frame.minY + 0.36584 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.99970 * frame.width, y: frame.minY + 0.17336 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.17326 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50002 * frame.width, y: frame.minY + 0.00000 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.17326 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.50003 * frame.width, y: frame.minY + 0.28737 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.13937 * frame.width, y: frame.minY + 0.17167 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50003 * frame.width, y: frame.minY + 0.04669 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.86066 * frame.width, y: frame.minY + 0.17167 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50003 * frame.width, y: frame.minY + 0.28737 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.67298 * frame.width, y: frame.minY + 0.67512 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.75480 * frame.width, y: frame.minY + 0.56151 * frame.height), control1: CGPoint(x: frame.minX + 0.71019 * frame.width, y: frame.minY + 0.66258 * frame.height), control2: CGPoint(x: frame.minX + 0.74016 * frame.width, y: frame.minY + 0.61817 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.57646 * frame.width, y: frame.minY + 0.61875 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.67298 * frame.width, y: frame.minY + 0.67512 * frame.height), control1: CGPoint(x: frame.minX + 0.59915 * frame.width, y: frame.minY + 0.66439 * frame.height), control2: CGPoint(x: frame.minX + 0.63504 * frame.width, y: frame.minY + 0.68790 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.88799 * frame.width, y: frame.minY + 0.60344 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.96907 * frame.width, y: frame.minY + 0.49274 * frame.height), control1: CGPoint(x: frame.minX + 0.92458 * frame.width, y: frame.minY + 0.59111 * frame.height), control2: CGPoint(x: frame.minX + 0.95416 * frame.width, y: frame.minY + 0.54800 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.79268 * frame.width, y: frame.minY + 0.54936 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.88799 * frame.width, y: frame.minY + 0.60344 * frame.height), control1: CGPoint(x: frame.minX + 0.81537 * frame.width, y: frame.minY + 0.59351 * frame.height), control2: CGPoint(x: frame.minX + 0.85075 * frame.width, y: frame.minY + 0.61601 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.32709 * frame.width, y: frame.minY + 0.67512 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.42357 * frame.width, y: frame.minY + 0.61875 * frame.height), control1: CGPoint(x: frame.minX + 0.36497 * frame.width, y: frame.minY + 0.68790 * frame.height), control2: CGPoint(x: frame.minX + 0.40090 * frame.width, y: frame.minY + 0.66439 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.24522 * frame.width, y: frame.minY + 0.56150 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.32709 * frame.width, y: frame.minY + 0.67512 * frame.height), control1: CGPoint(x: frame.minX + 0.25986 * frame.width, y: frame.minY + 0.61816 * frame.height), control2: CGPoint(x: frame.minX + 0.28985 * frame.width, y: frame.minY + 0.66259 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.11200 * frame.width, y: frame.minY + 0.60344 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.20736 * frame.width, y: frame.minY + 0.54935 * frame.height), control1: CGPoint(x: frame.minX + 0.14932 * frame.width, y: frame.minY + 0.61601 * frame.height), control2: CGPoint(x: frame.minX + 0.18464 * frame.width, y: frame.minY + 0.59351 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.03096 * frame.width, y: frame.minY + 0.49274 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.11200 * frame.width, y: frame.minY + 0.60344 * frame.height), control1: CGPoint(x: frame.minX + 0.04584 * frame.width, y: frame.minY + 0.54800 * frame.height), control2: CGPoint(x: frame.minX + 0.07542 * frame.width, y: frame.minY + 0.59111 * frame.height))
		kaabaPath.closeSubpath()
		kaabaPath.move(to: CGPoint(x: frame.minX + 0.89026 * frame.width, y: frame.minY + 0.69715 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.76923 * frame.width, y: frame.minY + 0.55689 * frame.height), control1: CGPoint(x: frame.minX + 0.83280 * frame.width, y: frame.minY + 0.71653 * frame.height), control2: CGPoint(x: frame.minX + 0.77966 * frame.width, y: frame.minY + 0.65411 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.76800 * frame.width, y: frame.minY + 0.55728 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.67524 * frame.width, y: frame.minY + 0.76884 * frame.height), control1: CGPoint(x: frame.minX + 0.77308 * frame.width, y: frame.minY + 0.65600 * frame.height), control2: CGPoint(x: frame.minX + 0.73252 * frame.width, y: frame.minY + 0.74951 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.55395 * frame.width, y: frame.minY + 0.62599 * frame.height), control1: CGPoint(x: frame.minX + 0.61725 * frame.width, y: frame.minY + 0.78838 * frame.height), control2: CGPoint(x: frame.minX + 0.56372 * frame.width, y: frame.minY + 0.72468 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50003 * frame.width, y: frame.minY + 0.64329 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.44612 * frame.width, y: frame.minY + 0.62599 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.32484 * frame.width, y: frame.minY + 0.76883 * frame.height), control1: CGPoint(x: frame.minX + 0.43635 * frame.width, y: frame.minY + 0.72468 * frame.height), control2: CGPoint(x: frame.minX + 0.38279 * frame.width, y: frame.minY + 0.78837 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.23202 * frame.width, y: frame.minY + 0.55726 * frame.height), control1: CGPoint(x: frame.minX + 0.26749 * frame.width, y: frame.minY + 0.74950 * frame.height), control2: CGPoint(x: frame.minX + 0.22692 * frame.width, y: frame.minY + 0.65598 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.23079 * frame.width, y: frame.minY + 0.55687 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.10975 * frame.width, y: frame.minY + 0.69715 * frame.height), control1: CGPoint(x: frame.minX + 0.22036 * frame.width, y: frame.minY + 0.65410 * frame.height), control2: CGPoint(x: frame.minX + 0.16722 * frame.width, y: frame.minY + 0.71652 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.01691 * frame.width, y: frame.minY + 0.48821 * frame.height), control1: CGPoint(x: frame.minX + 0.05301 * frame.width, y: frame.minY + 0.67800 * frame.height), control2: CGPoint(x: frame.minX + 0.01269 * frame.width, y: frame.minY + 0.58595 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.00035 * frame.width, y: frame.minY + 0.48290 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.00035 * frame.width, y: frame.minY + 0.83958 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.50003 * frame.width, y: frame.minY + 1.00000 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.99972 * frame.width, y: frame.minY + 0.83958 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.99972 * frame.width, y: frame.minY + 0.48290 * frame.height))
		kaabaPath.addLine(to: CGPoint(x: frame.minX + 0.98316 * frame.width, y: frame.minY + 0.48821 * frame.height))
		kaabaPath.addCurve(to: CGPoint(x: frame.minX + 0.89026 * frame.width, y: frame.minY + 0.69715 * frame.height), control1: CGPoint(x: frame.minX + 0.98737 * frame.width, y: frame.minY + 0.58595 * frame.height), control2: CGPoint(x: frame.minX + 0.94704 * frame.width, y: frame.minY + 0.67800 * frame.height))
		kaabaPath.closeSubpath()

		return kaabaPath
	}
}

struct Kaaba_Previews: PreviewProvider {
    static var previews: some View {
        Kaaba()
			.foregroundColor(Color.yellow)
    }
}
