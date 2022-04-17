//
//  Color.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import Foundation
import SwiftUI


struct ColorTheme {
    let grey = Color("Gray")
    let peach = Color("Peach")
}

extension Color {
    static var colorTheme = ColorTheme()
}
