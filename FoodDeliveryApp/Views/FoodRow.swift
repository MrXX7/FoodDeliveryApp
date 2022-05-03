//
//  FoodRow.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct FoodRow: View {
    
    var kitchenName: String
    var foods: [Food]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
        HStack {
        ForEach(self.foods, id: \.id) { food in
            
            NavigationLink(destination: FoodDetail(food: food)){
                FoodItem(food: food)
            }.buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(kitchenName: "Italian", foods: Menu)
    }
}
