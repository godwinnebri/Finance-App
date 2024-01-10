//
//  AppModel.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import Foundation

@Observable
class AppModel {
    var friends = ["Beni", "Jaq", "John", "Stef", "Max"]
    var selectedFriends = ["Beni"]

    var showSendMoney = false
    
    var friendSelected = false
    
    var showSendTo = false

    var amountToSend = 0.0
    
    // Default Formatter
    var formatter: NumberFormatter = {
       let formatter = NumberFormatter()
       formatter.numberStyle = .currency
       formatter.locale = Locale(identifier: "GBP")
       return formatter
    }()
    
    
    var numberPad: [[String]] = [
            ["1", "2", "3"],
            ["4", "5", "6"],
            ["7", "8", "9"],
            ["·", "0", "⌫"]
        ]

}
