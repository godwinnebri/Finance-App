//
//  AppModel.swift
//  FinanceApp
//
//  Created by Godwin IE on 09/01/2024.
//

import Foundation

@Observable
class AppModel: Codable {
    var friends = ["Beni", "Jaq", "John", "Stef", "Max"]
    var selectedFriends = ["Beni"]

    var showSendMoney = false
    
    var amountToSend = 0

}
