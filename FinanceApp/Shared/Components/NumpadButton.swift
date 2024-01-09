//
//  NumpadButton.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct NumpadButton: View {
    let title: Double
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title, format: .number)
                .font(.title)
                .frame(width: 60, height: 60)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    NumpadButton(title: 1, action: {print("Button pressed")})
}
