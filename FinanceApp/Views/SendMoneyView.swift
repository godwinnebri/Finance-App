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
            HStack{
                Image(systemName: "xmark")
                    .foregroundStyle(.clear)
                
                Spacer()
                
                Text("Send to")
                    .font(.headline)
                
                Spacer()
                
                Button {
                    //dismiss sheet
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.gray)
                }
                
            }
            .padding()

            

            ZStack{
                VStack{
                    
                    Spacer()

                    //friends
                    HStack(spacing: -26){
                        ForEach(appModel.selectedFriends, id: \.self) { person in
                            
                            FriendCard(name: person, image: person, selected: true)
                            
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
                                    .padding(.trailing, 4)
                                Text("🇬🇧")
                                    .font(.title3)
                                Image(systemName: "chevron.down")
                                
                            }
                            .foregroundStyle(.white.opacity(0.6))
                            .padding(.vertical, 20)
                            .padding(.horizontal, 20)
                            .background(.kGray3)
                            .clipShape(Capsule())
                            .frame(maxWidth: .infinity)
                        }
                        
                        Button {
                            withAnimation(Animation.bouncy(duration: 0.5)){
                                appModel.showSendTo = true
                            }
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
                    .padding()
                    
                } //v stack
                .onTapGesture {
                    appModel.showSendTo = false
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 16) {
                        ForEach(appModel.friends, id: \.self) { person in
                            Button {
                                if appModel.selectedFriends.contains(person){
                                    withAnimation(Animation.spring(response: 0.6, dampingFraction: 0.3, blendDuration: 0)){
                                        if let index = self.appModel.selectedFriends.firstIndex(of: person) {
                                            self.appModel.selectedFriends.remove(at: index)
                                        }
                                    }
                                }else {
                                    withAnimation(Animation.spring(response: 0.6, dampingFraction: 0.3, blendDuration: 0)){
                                        appModel.selectedFriends.append(person)
                                    }
                                }
                                print(appModel.friendSelected)
                            } label: {
                                
                                SendtoFriendCard(
                                    name: person,
                                    image: person,
                                    isSelected: appModel.selectedFriends.contains(person) ? true : false
                                )
                                
                            }
                        }
                    }
                    .padding(16)
                } //pop up
                .frame(width: 382, alignment: .topLeading)
                .background(.kGray3)
                .cornerRadius(34)
                .overlay(
                  RoundedRectangle(cornerRadius: 34)
                    .inset(by: 0.5)
                    .stroke(.white.opacity(0.1), lineWidth: 1)
                )
                .scaleEffect(appModel.showSendTo ? 1 : 0)
                .offset(y: 36)


                
            } //z stack
            .padding(.bottom, 16)

            NumberPadView(inputText: $appModel.amountToSend)
                .padding()
            
        }
    }

}

#Preview {
    SendMoneyView()
        .preferredColorScheme(.dark)

}
