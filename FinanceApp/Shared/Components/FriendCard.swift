//
//  Friend.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct FriendCard: View {
    var name : String
    var image : String
    var showName : Bool
    
    var body: some View {
        VStack(spacing: 10) {
           
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 48)
                    .padding(12)
                    .background(.kGray2)
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color.black, lineWidth: 4)
                    )
                
            if showName {
                Text(name)
                    .font(.callout)
                    .foregroundStyle(.white)
            }
                
            }
    }
}

#Preview {
    FriendCard(name: "Broo", image: "Settings", showName: true)
}
