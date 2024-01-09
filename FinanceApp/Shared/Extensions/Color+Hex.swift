//
//  Color+Hex.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import Foundation

import SwiftUI

extension ShapeStyle where Self == Color {

    static var kPrimary: Color {
        Color(hex: 0xffA7FA51)
    }
    
    static var kGray: Color {
        Color(hex: 0xff1B1D21)
    }
    
    static var kGray2: Color {
        Color(hex: 0xff232323)
    }
    
}


extension Color {
    init(hex: UInt, opacity: Double = 1.0) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

