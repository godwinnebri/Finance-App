//
//  NumberPadView.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct NumberPadView: View {
    
    @State private var appModel = AppModel()

    @Binding var inputText: Double

    var body: some View {
        VStack(spacing: 6) {
            ForEach(appModel.numberPad, id: \.self) { row in
                HStack(spacing: 6) {
                    ForEach(row, id: \.self) { button in
                        NumpadButton(
                            title: button,
                            buttonColor: button == "·" || button == "⌫" ? .clear : .kGray3,
                            numberColor: button == "·" || button == "⌫" ? .gray : .white,
                            
                            action: {
                                self.handleButtonPress(button)
                            }
                        )
                    }
                }
            }
        }
    }

    
    
    
    
    
    
    
    
    private func handleButtonPress(_ button: String) {
        switch button {
        case ".":
            // Check if the inputText already contains a decimal point
            let decimalPart = inputText.truncatingRemainder(dividingBy: 1)
            if decimalPart == 0 {
                inputText = inputText == 0 ? 0.0 : inputText  
                // Ensure there's a leading zero if inputText is 0
                inputText += 0.0  // Append the decimal point
            }
        case "⌫":
            // Handle delete button
                inputText = floor(inputText / 10)
        default:
            // Convert the button value to a double and append it to the input text
                inputText = inputText == 0 ? Double(button) ?? 0 : inputText * 10 + (Double(button) ?? 0)

        }
    }


   

}

//#Preview {
//    NumberPadView(inputText: $d)
//}
