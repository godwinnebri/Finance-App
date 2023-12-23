//
//  Home.swift
//  FinanceApp
//
//  Created by Godwin IE on 22/12/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(){
            
            //app bar
            HStack{
                VStack(alignment: .leading){
                    Text("Hey")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Text("Danny Payne")
                        .fontWeight(.medium)
                }
                
                Spacer()
                
                HStack(spacing: 16){
                    
                    CircleButton(icon: "bell")
                    CircleButton(icon: "barcode.viewfinder")
                    
                }
            }
            
            Spacer()
            
            //balance and currency
            VStack(spacing: 16){
                VStack(spacing: 8){
                    Text("Total balance")
                        .font(.callout)
                        .foregroundColor(.gray)
                    
                    Text("$ 3,800.79")
                        .font(.custom("SF Pro", size: 30))
                        .fontWeight(.medium)
                }
                
                HStack(alignment: .center, spacing: 12) {
                    Text("🇬🇧")
                        .font(.title)
                    
                    Image(systemName: "chevron.down")
                        .font(.callout)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(Color(red: 0.09, green: 0.09, blue: 0.09))
                .cornerRadius(10)
            }
            
            Spacer()

            //card
            VerticalCard()
            
            Spacer()
            
            //send to
            VStack(alignment: .leading, spacing: 12){
                Text("Send to")
                    .fontWeight(.medium)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<10) { person in
                            VStack(spacing: 10) {
                                Image("Beni")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 48)
                                    .padding(12)
                                    .background(.white.opacity(0.1))
                                    .cornerRadius(80)
                                
                                Text("Beni")
                                
                            }
                        }
                    }
                }
            }

        }
        .preferredColorScheme(.dark)
        .padding()
    }
}

#Preview {
    HomeView()
}
