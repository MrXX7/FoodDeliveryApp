//
//  FoodDetail.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct FoodDetail: View {
    
    var food: Food
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(food.imageName)
                    .resizable()
                .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack {
                    Text(food.name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    .shadow(radius: 10)
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            
            VStack {
                Text(food.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                .lineSpacing(12)
                
                HStack {
                    Spacer()
                    Button(action: {}){
                        Text("Order Now")
                            .foregroundColor(.white)
                            .background(Rectangle()
                                .frame(width: 200, height: 60)
                                .foregroundColor(Color.blue).cornerRadius(15))
                    }.padding(.top, 50)
                        .padding(.bottom, 50)
                    Spacer()
                }
            }.padding(.top, 20)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(food: Menu[0])
    }
}
