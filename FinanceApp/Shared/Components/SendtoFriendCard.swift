//
//  SendtoFriendCard.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct SendtoFriendCard: View {
    var name: String
    var image: String
    var isSelected: Bool

    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 46)
                    .padding(12)
                    .background(.kGray5)
                    .cornerRadius(80)

                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.kPrimary)
                        .offset(x: 24, y: -25)
                }
            }

            Text(name)
                .font(.callout)
                .foregroundStyle(.white)
        }
    }
}

    #Preview {
        FriendCard(name: "Broo", image: "Settings", selected: true)
    }
