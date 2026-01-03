//
//  NavigationBarColorModifier.swift
//  Echo
//
//  Created by Attrams on 02/01/2026.
//

import Foundation
import SwiftUI

struct NavigationBarColor: ViewModifier {
    var backgroundColor: Color

    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content.background(backgroundColor)
    }
}

extension View {
    func navigationBarColor(backgroundColor: Color) -> some View {
        return modifier(NavigationBarColor(backgroundColor: backgroundColor))
    }
}
