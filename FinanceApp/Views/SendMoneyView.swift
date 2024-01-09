//
//  SendMoneyView.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import SwiftUI

struct SendMoneyView: View {
    @State private var appModel = AppModel()

    var body: some View {
        VStack{
            Text("Send to")
                .font(.headline)
            
            
            Spacer()

            //friends
            HStack(spacing: -24){
                ForEach(appModel.selectedFriends, id: \.self) { person in
                    
                    FriendCard(name: person, image: person, showName: true)
                        
                }
            }
            
            Spacer()

            //money
            VStack(spacing: 8) {

                Text(appModel.amountToSend, format: .currency(code: "GBP"))
                    .font(.custom("SF Pro", size: 44))
                    .foregroundStyle(appModel.amountToSend == 0.00 ? .white.opacity(0.4) : .white)
                
                Text("Available balance: ￡4,859")
                    .foregroundStyle(.white.opacity(0.6))
            }
            
            Spacer()
            Spacer()


            
            //send button
            HStack(spacing: 16) {
                Button {
                    
                } label: {
                    HStack{
                        Text("From")
                            .padding(.trailing, 8)
                        Text("🇬🇧")
                            .font(.title3)
                        Image(systemName: "chevron.down")

                    }
                    .foregroundStyle(.white.opacity(0.6))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 24)
                    .background(.kGray)
                    .clipShape(Capsule())
                }
                
                Button {
                    print(appModel.amountToSend)
                } label: {
                    Text("Send money")
                        .foregroundStyle(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 42)
                        .background(.kPrimary)
                        .clipShape(Capsule())
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.bottom, 16)
            
            NumberPadView(inputText: $appModel.amountToSend)
            
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    SendMoneyView()
        .preferredColorScheme(.dark)

}
