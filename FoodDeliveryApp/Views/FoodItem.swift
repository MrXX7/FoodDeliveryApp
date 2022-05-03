//
//  FoodItem.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 2.05.2022.
//

import SwiftUI

struct FoodItem: View {
    
    var food: Food
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(food.imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(10)
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(food.name)
                    .font(.title)
                    .foregroundColor(.primary)
                Text(food.description)
                .lineLimit(2)
            }
        }.frame(width: 300)
        .padding(.leading , 10)
            .padding(.trailing , 10)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItem(food: Menu[1])
    }
}
