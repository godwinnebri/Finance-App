//
//  CircleButton.swift
//  FinanceApp
//
//  Created by Godwin IE on 22/12/2023.
//

import SwiftUI

struct CircleButton: View {
    var icon : String
    var body: some View {
        Button {
        } label: {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.white)
                .padding(12)
                .overlay(
                    Circle()
                        .stroke(.white.opacity(0.3), lineWidth: 1)
                )
        }
    }
}

#Preview {
    CircleButton(icon: "bell")
}
