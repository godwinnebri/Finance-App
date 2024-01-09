//
//  NumberPadView.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct NumberPadView: View {
    @Binding var inputText: Double

    let numberPad: [[String]] = [
            ["1", "2", "3"],
            ["4", "5", "6"],
            ["7", "8", "9"],
            [".", "0", "x"]
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

    private func handleButtonPress(_ button: String) {
        switch button {
        case ".":
            // Check if the inputText already contains a decimal point
            if !String(format: "%.0f", inputText).contains(".") {
                inputText = inputText == 0 ? 0.0 : inputText  // Ensure there's a leading zero if inputText is 0
                inputText += 0.0  // Append the decimal point
            }
        case "x":
            // Handle delete button
            inputText = floor(inputText / 10)
        default:
            // Convert the button value to a double and append it to the input text
            inputText = inputText == 0 ? Double(button) ?? 0 : inputText * 10 + Double(button)! 
        }
    }

   

}

//#Preview {
//    NumberPadView(inputText: $d)
//}
