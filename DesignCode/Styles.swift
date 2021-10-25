//
//  Styles.swift
//  DesignCode
//
//  Created by Mauricio Dias on 25/10/21.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    var cornerRadius: CGFloat
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1)
                        ], startPoint: .top, endPoint: .bottom)
                )
                .blendMode(.overlay)
        )
    }
    
}


extension View {
    func strokeStyle(cornerRadius: CGFloat = 30.0) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
