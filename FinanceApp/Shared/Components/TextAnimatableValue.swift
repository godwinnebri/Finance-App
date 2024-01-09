//
//  TextAnimatableValue.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct TextAnimatableValue: View, Animatable {
    @State private var appModel = AppModel()

    var value: Double
    
    
    
    var animatableData: Double {
       get { value }
       set {
          value = newValue
       }
    }
    
    
    var body: some View {
        Text(appModel.formatter.string(for: value) ?? "")
    }
}
