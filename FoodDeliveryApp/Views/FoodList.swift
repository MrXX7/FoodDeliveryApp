//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 1.05.2022.
//

import SwiftUI

struct FoodList: View {
    
    var categories:[String:[Food]] {
        .init(
            grouping: Menu,
            by: {$0.kitchen.self}
        )
    }
    var body: some View {
        NavigationView {
            
            List(categories.keys.sorted(), id:
                    \String.self){ key in
                
                FoodRow(kitchenName: "\(key) Food",
                    foods: self.categories[key]!)
                .frame(height: 300)
                .padding(.top)
                .padding(.bottom)
                
            } .navigationBarTitle("Food Delivery")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
