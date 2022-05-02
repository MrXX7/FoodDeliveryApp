//
//  Food.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct Food: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var kitchen: String
    var description: String
    
    enum Kitchen: String, CaseIterable, Codable, Hashable {
        case italian = "Italian"
        case chinese = "Chinese"
    }
    
}

