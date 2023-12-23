//
//  VerticalCard.swift
//  FinanceApp
//
//  Created by Godwin IE on 22/12/2023.
//

import SwiftUI

struct VerticalCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Visa")
                .resizable()
                .frame(width: 58, height: 18)
            
            Spacer()
            
            Image("paypass")
                .resizable()
                .frame(width: 54, height: 44)
                .padding(.horizontal, 68)
            
            
            Color.clear
                .frame(maxWidth: .infinity, maxHeight: 0)
            
            Spacer()

            VStack (alignment: .leading, spacing: 6){
                Text("CARD HOLDER")
                    .font(.caption2)
                    .foregroundColor(.white.opacity(0.5))
                Text("Danny Payne")
                Text("**** **** **** 9982")
                    .foregroundColor(.white.opacity(0.5))

            }
        }
        .padding(20)
        .padding(.top, 5)

        .frame(width: 230, height: 330)
        .background(
          LinearGradient(
            stops: [
              Gradient.Stop(color: Color(red: 0.38, green: 0.4, blue: 0.41), location: 0.00),
              Gradient.Stop(color: Color(red: 0.29, green: 0.31, blue: 0.32), location: 0.21),
              Gradient.Stop(color: Color(red: 0.2, green: 0.22, blue: 0.23), location: 0.47),
              Gradient.Stop(color: Color(red: 0.09, green: 0.1, blue: 0.12), location: 0.92),
            ],
            startPoint: UnitPoint(x: 1.13, y: -0.07),
            endPoint: UnitPoint(x: 0.04, y: 1)
          )
        )
        .cornerRadius(18)
//        .overlay(
//          RoundedRectangle(cornerRadius: 18)
//            .inset(by: 0.5)
//            .stroke(.white.opacity(1), lineWidth: 1)
//        )
    }
}

#Preview {
    VerticalCard()
}
