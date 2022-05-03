//
//  FoodRow.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct FoodRow: View {
    
    var kitchenname: String
    var foods: [Food]
    var body: some View {
        FoodItem(food: foods[0])
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(kitchenname: "Italian", foods: Menu)
    }
}
