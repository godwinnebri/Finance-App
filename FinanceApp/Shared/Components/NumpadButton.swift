//
//  NumpadButton.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct NumpadButton: View {
    @State private var appModel = AppModel()

    let title: String
    let buttonColor: Color
    let action: () -> Void
    
    var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .background(buttonColor)
                    .foregroundStyle(.white)
                    .cornerRadius(16)
            }
        }
    }


#Preview {
    NumpadButton(title: "1", buttonColor: .kGray, action: {})
}
