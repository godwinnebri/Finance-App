//
//  NumberPadView.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct NumberPadView: View {
    @State var inputText: Double

    let numberPad: [[Double]] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [0]
    ]

    var body: some View {
        VStack(spacing: 10) {
            ForEach(numberPad, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { button in
                        NumpadButton(title: button, action: {
                            self.handleButtonPress(button)
                        })
                    }
                }
            }
        }
    }

    private func handleButtonPress(_ button: Double) {
        if button == 0 {
            // Handle special actions (e.g., delete, clear)
            // For simplicity, let's clear the input text for an empty button
            inputText = 0
        } else {
            // Append the pressed button to the input text
            inputText += button
        }
    }
}

#Preview {
    NumberPadView(inputText: 1)
}
