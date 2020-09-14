//
//  Binding+Extension.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 9/13/20.
//

import SwiftUI

prefix func ! (value: Binding<Bool>) -> Binding<Bool> {
	Binding<Bool>(
		get: { !value.wrappedValue },
		set: { value.wrappedValue = !$0 }
	)
}
